const readline = require('readline-sync');

let n = parseInt(readline.question("Введите количество чисел: "));
let sum = 0;

for (let i = 0; i < n; i++) {
  let input = readline.question(`Введите число ${i + 1}: `);

  for (let c of input) {
    if (!isNaN(c) && c !== ' ') {
      let digit = parseInt(c);
      if (digit % 3 === 0) {
        sum += digit;
      }
    }
  }
}

console.log("Сумма цифр, делящихся на 3: " + sum);

