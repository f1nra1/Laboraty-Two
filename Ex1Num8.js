const prompt = require('readline-sync'); // для Node.js

let n = parseInt(prompt.question("Введите n: "));

for (let i = 1; i <= n; i++) {
    let line = '';
    for (let code = 'A'.charCodeAt(0) + n - 1; code >= 'A'.charCodeAt(0) + n - i; code--) {
        line += String.fromCharCode(code) + ' ';
    }
    console.log(line);
}

