function main(): void {
  const n = parseInt(prompt("Введите количество цветов:") || "0");

  const waterInput = prompt("Введите потребность каждого цветка через пробел:") || "";
  const water = waterInput.split(" ").map(Number);

  const capacity = parseInt(prompt("Введите объем лейки:") || "0");

  let steps = 0;
  let currentWater = capacity;
  let position = -1; // начинаем с реки

  for (let i = 0; i < n; i++) {
    if (currentWater >= water[i]) {
      steps += Math.abs(position - i);
      currentWater -= water[i];
      position = i;
    } else {
      // Идём к реке
      steps += Math.abs(position - (-1));
      position = -1;
      currentWater = capacity;

      // Обратно к цветку
      steps += Math.abs(position - i);
      currentWater -= water[i];
      position = i;
    }
  }

  alert("Общее количество шагов: " + steps);
}

main();

