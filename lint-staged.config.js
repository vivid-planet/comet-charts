module.exports = {
    "*": () => "npx prettier -c .",
    "charts/**/*.{tpl,yml,yaml}": "helmfmt --check --files",
};
