mkdir ./dist
emcc ./src/file.cpp \
    -s EXPORTED_FUNCTIONS='["_basin", "_sleep"]' \
    -s EXPORTED_RUNTIME_METHODS='["ccall","cwrap","FS","NODEFS"]' \
    -lnodefs.js \
    -pthread \
    -s PTHREAD_POOL_SIZE=2 \
    -s MODULARIZE=1 \
    -s 'EXPORT_NAME="createMyModule"' \
    -o ./dist/file.js

node --experimental-wasm-threads --experimental-wasm-bulk-memory ./src/run-file.js
