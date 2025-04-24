function main(): void {
  const n = parseInt(prompt("Введите количество чисел:") || "0");
  let sum = 0;

  for (let i = 0; i < n; i++) {
    const input = prompt(`Введите число ${i + 1}:`) || "";

    for (const c of input) {
      if (!isNaN(parseInt(c)) && c >= '0' && c <= '9') {
        const digit = parseInt(c);
        if (digit % 3 === 0) {
          sum += digit;
        }
      }
    }
  }

  alert("Сумма цифр, делящихся на 3: " + sum);
}

main();

const readline = require('readline').createInterface({
  input: process.stdin,
  output: process.stdout
});

function questionAsync(prompt: string): Promise<number> {
  return new Promise((resolve) => {
    readline.question(prompt, (input: string) => {
      resolve(parseInt(input.trim()));
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
  readline.close();
}

main().catch(err => console.error(err));