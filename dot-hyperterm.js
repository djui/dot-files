module.exports = {
  config: {
    // default font size in pixels for all tabs
    fontSize: 12,

    // font family with optional fallbacks
    fontFamily: 'Menlo, "DejaVu Sans Mono", "Lucida Console", monospace',

    // terminal cursor background color (hex)
    cursorColor: '#F81CE5',

    //cursorShape: 'BEAM',

    // color of the text
    foregroundColor: '#fff',

    // terminal background color
    backgroundColor: '#000',

    // border color (window, tabs)
    borderColor: '#333',

    // custom css to embed in the main window
    css: '',

    // custom css to embed in the terminal window
    termCSS: '',

    // custom padding (css format, i.e.: `top right bottom left`)
    padding: '1px 3px',

    // some color overrides. see http://bit.ly/29k1iU2 for
    // the full list
    colors: [
      '#000000, '//'#000000',
      '#ff796d', //'#ff0000',
      '#6eb9f8', //'#33ff00',
      '#efdfac', //'#ffff00',
      '#6eb9f8', //'#0066ff',
      '#ef88ff', //'#cc00ff',
      '#90fdf9', //'#00ffff',
      '#e5e1d8', //'#d0d0d0',
      '#404040', //'#808080',
      '#f99f92', //'#ff0000',
      '#e3f7a0', //'#33ff00',
      '#f2e9bf', //'#ffff00',
      '#b4d3ff', //'#0066ff',
      '#e5bdff', //'#cc00ff',
      '#c2fefa', //'#00ffff',
      '#ffffff', //'#ffffff'
    ]
  },

  // a list of plugins to fetch and install from npm
  // format: [@org/]project[#version]
  // examples:
  //   `hyperpower`
  //   `@company/project`
  //   `project#1.0.1`
  plugins: [
      'hyperterm-atom-dark',

      'hyperterm-paste',
    //'hyperterm-blink',
      'hyperlinks',
      'hyperterm-1password',
    //'hyperterm-alternatescroll',

      'hyperterm-close-on-left',
      'hyperterm-tab-icons',
  ],

  // in development, you can create a directory under
  // `~/.hyperterm_plugins/local/` and include it here
  // to load it and avoid it being `npm install`ed
  localPlugins: []
};
