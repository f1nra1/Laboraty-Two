const readline = require('readline');

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

function questionAsync(prompt) {
  return new Promise((resolve) => {
    rl.question(prompt, (input) => {
      resolve(parseInt(input.trim(), 10));
    });
  });
}

async function main() {
  let sum = 0;

  const n = await questionAsync("Введите количество чисел: ");

  for (let i = 1; i <= n; i++) {
    let number = await questionAsync(`Введите число ${i}: `);
    
    // Обрабатываем отрицательные числа
    number = Math.abs(number);
    
    // Разбираем число по цифрам
    let temp = number;
    while (temp > 0) {
      const digit = temp % 10;
      if (digit % 3 === 0 && digit !== 0) {
        sum += digit;
      }
      temp = Math.floor(temp / 10);
    }
  }

  console.log(`Сумма цифр, делящихся на 3: ${sum}`);
  rl.close();
}

main().catch(err => console.error(err));