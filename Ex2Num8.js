const readline = require('readline-sync');

const n = parseInt(readline.question("Введите количество цветов: "));
const waterNeeds = readline.question("Введите потребность каждого цветка через пробел: ")
                         .split(' ')
                         .map(Number);
const capacity = parseInt(readline.question("Введите объем лейки: "));

let steps = 0;
let currentWater = capacity;
let position = -1; // начинаем с реки

for (let i = 0; i < n; i++) {
  if (currentWater >= waterNeeds[i]) {
    steps += Math.abs(position - i);
    currentWater -= waterNeeds[i];
    position = i;
  } else {
    steps += Math.abs(position - (-1)); // до реки
    position = -1;
    currentWater = capacity;

    steps += Math.abs(position - i); // обратно к цветку
    currentWater -= waterNeeds[i];
    position = i;
  }
}

console.log("Общее количество шагов: " + steps);

