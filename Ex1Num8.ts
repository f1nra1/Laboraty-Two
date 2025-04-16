function printPattern(n: number): void {
  for (let i = 1; i <= n; i++) {
    let line = '';
    for (let code = 'A'.charCodeAt(0) + n - 1; code >= 'A'.charCodeAt(0) + n - i; code--) {
      line += String.fromCharCode(code) + ' ';
    }
    console.log(line.trim());
  }
}

// Пример использования:
const input = prompt("Введите n:");
const n = parseInt(input || '0', 10);

if (!isNaN(n) && n > 0) {
  printPattern(n);
} else {
  console.log("Введите корректное положительное число.");
}

