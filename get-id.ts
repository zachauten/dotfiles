const data = Deno.readTextFileSync("words.json");
const words = JSON.parse(data);

const three = (new Array(3)).fill(0).map(x => words[Math.floor(Math.random() * (words.length - 1))])

console.log(three.join("-"));
