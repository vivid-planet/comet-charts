const fs = require("fs");

fs.readdirSync("charts").forEach((dir) => {
    const version = require(`./charts/${dir}/package.json`).version;

    const filename = `./charts/${dir}/Chart.yaml`;
    let str = fs.readFileSync(filename).toString();
    str = str.replace(/version: (.*)/m, `version: ${version}`);
    fs.writeFileSync(filename, str);
});
