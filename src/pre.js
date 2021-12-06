Module = {
  'preRun': function() {
    FS.mkdir('/working')
    FS.mount(NODEFS, { root: './script' }, '/working');
  },
}
