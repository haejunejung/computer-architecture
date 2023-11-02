import { mem_region_t } from "../classes/mem_region_t";

export const mem_read = (mem_regions: Array<mem_region_t>, address: number) => {
  let ret = 0;
  for (const i in mem_regions) {
    if (
      address >= mem_regions[i].start &&
      address < mem_regions[i].start + mem_regions[i].size
    ) {
      const offset = address - mem_regions[i].start;
      ret =
        (mem_regions[i].mem[offset + 3] << 24) |
        (mem_regions[i].mem[offset + 2] << 16) |
        (mem_regions[i].mem[offset + 1] << 8) |
        (mem_regions[i].mem[offset + 0] << 0);
    }
  }

  return ret;
};

export const mem_write = (
  mem_regions: Array<mem_region_t>,
  address: number,
  value: number
) => {
  for (const i in mem_regions) {
    if (
      address >= mem_regions[i].start &&
      address < mem_regions[i].start + mem_regions[i].size
    ) {
      const offset = address - mem_regions[i].start;

      mem_regions[i].mem[offset + 3] = (value >> 24) & 0xff;
      mem_regions[i].mem[offset + 2] = (value >> 16) & 0xff;
      mem_regions[i].mem[offset + 1] = (value >> 8) & 0xff;
      mem_regions[i].mem[offset + 0] = (value >> 0) & 0xff;

      mem_regions[i].set_off_bound(offset + 4);
      break;
    }
  }
};

export const mem_write_half = (
  mem_regions: Array<mem_region_t>,
  address: number,
  value: number
) => {
  for (const i in mem_regions) {
    if (
      address >= mem_regions[i].start &&
      address < mem_regions[i].start + mem_regions[i].size
    ) {
      const offset = address - mem_regions[i].start;
      mem_regions[i].mem[offset + 1] = (value >> 8) & 0xff;
      mem_regions[i].mem[offset + 0] = (value >> 0) & 0xff;
      mem_regions[i].set_off_bound(offset + 2);
    }
  }
};
