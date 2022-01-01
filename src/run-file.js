const path = require('path')

const distDir = path.join(__dirname, '../dist')

const run = require('../dist/file.js')

const Mod = {
  preInit: () => {
    Mod.FS.mkdir('/working')
    Mod.FS.mount(Mod.NODEFS, { root: distDir }, '/working');
  },
}

run(Mod).then((mod) => {
  const basin = mod.cwrap('basin', null, []);
  basin();
  const sleep = mod.cwrap('sleep', null, ['number']);
  console.log(123);
  sleep(1000);
  console.log(456);
  process.exit();
});
