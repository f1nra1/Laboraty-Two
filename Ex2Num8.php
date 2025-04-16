<?php
echo "Введите количество цветов: ";
$n = (int)fgets(STDIN);

$water = array(); // потребность каждого цветка
echo "Введите потребность каждого цветка через пробел:\n";
$water_input = explode(" ", trim(fgets(STDIN)));
foreach ($water_input as $w) {
    $water[] = (int)$w;
}

echo "Введите объем лейки: ";
$capacity = (int)fgets(STDIN);

$steps = 0;
$current_water = $capacity;
$position = -1; // начинаем с реки

for ($i = 0; $i < $n; ++$i) {
    if ($current_water >= $water[$i]) {
        $steps += abs($position - $i);
        $current_water -= $water[$i];
        $position = $i;
    } else {
        // идем к реке и обратно
        $steps += abs($position - (-1)); // до реки
        $position = -1;
        $current_water = $capacity;

        $steps += abs($position - $i); // обратно к цветку
        $current_water -= $water[$i];
        $position = $i;
    }
}

echo "Общее количество шагов: " . $steps . "\n";
?>

