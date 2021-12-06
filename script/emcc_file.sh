emcc ./src/file.cpp \
    -s EXPORTED_FUNCTIONS='["_basin"]' \
    -s EXPORTED_RUNTIME_METHODS='["ccall","cwrap"]' \
    -lnodefs.js \
    --pre-js=src/pre.js \
    -s MODULARIZE=1 \
    -s 'EXPORT_NAME="createMyModule"' \
    -o ./script/file.js

node -e "const run = require('./script/file.js'); run().then(mod => { const basin = mod.cwrap('basin', null, []); basin() });"
