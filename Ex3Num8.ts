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

