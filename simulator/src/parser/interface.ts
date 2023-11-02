export interface register_file {
  PC: string;
  Registers: { [key: string]: string };
  Data_section: { [key: string]: string };
  Stack_section: { [key: string]: string };
}
