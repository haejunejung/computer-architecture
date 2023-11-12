rm -rf app/public/release.wasm

cd mips-assembly
npm run asbuild

cd ..
cp mips-assembly/build/release.wasm app/public
