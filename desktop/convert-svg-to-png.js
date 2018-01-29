const fs = require("pn/fs"); // https://www.npmjs.com/package/pn
const svg2png = require("svg2png");

fs.readFile("wallpaper.svg")
    .then(svg2png)
    .then(buffer => fs.writeFile("wallpaper.png", buffer))
    .catch(e => console.error(e));
