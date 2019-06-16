const source = require('./source_data.json');

const set = new Set(source.map((e)=>e.LOST_PLACE));
console.log(set);
console.log(source.length)

