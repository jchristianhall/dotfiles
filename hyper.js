module.exports = {
  config: {
    fontSize: 16,
    fontFamily: 'Source Code Pro, Menlo, "DejaVu Sans Mono", monospace',
    cursorColor: "#ffcc00",
    cursorShape: "BEAM",
    cursorBlink: true,
    foregroundColor: "#eff0ea",
    backgroundColor: "#191919",
    borderColor: "#191919",
    css: "",
    termCSS: "",
    showHamburgerMenu: "",
    showWindowControls: "",
    padding: "12px 14px",

    colors: {
      black: "#000000",
      red: "#ff5b56",
      green: "#5af78d",
      yellow: "#f3f99c",
      blue: "#57c7fe",
      magenta: "#ff69c0",
      cyan: "#9aecfe",
      white: "#f1f1f0",
      lightBlack: "#686767",
      lightRed: "#ff5b56",
      lightGreen: "#5af78d",
      lightYellow: "#f3f99c",
      lightBlue: "#57c7fe",
      lightMagenta: "#ff69c0",
      lightCyan: "#9aecfe",
      lightWhite: "#f1f1f0"
    },
    shell: "zsh",
    shellArgs: ["--login"],
    env: {},
    bell: "SOUND",
    copyOnSelect: false,
    summon: {
      hotkey: "Ctrl+;",
      hideDock: true,
      hideOnBlur: true
    }
  },

  plugins: [
    "hypercwd",
    "hyperterm-paste",
    "hyper-search",
    "hyperlinks",
    "hyperterm-summon",
    "hyper-tabs-enhanced"
  ],

  localPlugins: []
};
