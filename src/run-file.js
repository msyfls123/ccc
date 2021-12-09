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
});
