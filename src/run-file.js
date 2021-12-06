const run = require('../script/file.js')

const Mod = {
  preInit: () => {
    Mod.FS.mkdir('/working')
    Mod.FS.mount(Mod.NODEFS, { root: './script' }, '/working');
  },
}

run(Mod).then((mod) => {
  const basin = mod.cwrap('basin', null, []);
  basin();
});
