rm -rf app/public/release.wasm

cd assembler
npm run asbuild

cd ..
cp assembler/build/release.wasm app/public
