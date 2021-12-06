emcc ./src/file.cpp \
    -s EXPORTED_FUNCTIONS='["_basin"]' \
    -s EXPORTED_RUNTIME_METHODS='["ccall","cwrap","FS","NODEFS"]' \
    -lnodefs.js \
    -s MODULARIZE=1 \
    -s 'EXPORT_NAME="createMyModule"' \
    -o ./script/file.js

node ./src/run-file.js
