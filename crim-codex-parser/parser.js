// const parser = require('node-html-parser');
// const fs = require('fs');
// const windows1251 = require('windows-1251');


// fs.readFile('./codex.htm', (err, data) => {
//   const html = data.toString();
  
//   const root = parser.parse(html);
  
//   const encodedData = windows1251.encode(root.querySelector('.rvts9').innerHTML, {
//     'mode': 'html'
//   });
//   console.log(encodedData)
//   console.log(root.querySelector('.rvts9'));
//   fs.writeFile('result.txt', encodedData, (err) => {
//     if (err) throw err;
//     console.log('The file has been saved!');
//   });
// });

//browser version
nodes = document.querySelectorAll('.rvts9');
nodes = Array.from(nodes);
result = [];
nodes.forEach(node=> {
  var nextSibling;
  if (!node.nextSibling) {
    console.log(node);
    nextSibling = ''
  } else {
    nextSibling = node.nextSibling.data;
  }
  var articleNumber = node.innerHTML.split(' ')[1];
  result.push({
    articleNumber: articleNumber ? articleNumber.replace('.', '') : articleNumber,
    article: node.innerHTML,
    articleName: nextSibling,
  })

  result = result.filter(({articleNumber, article, articleName}) => article && articleNumber && articleName);
})

JSON.stringify(result);