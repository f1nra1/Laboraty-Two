<?php

$sum = 0;

echo "Введите количество чисел: ";
$n = (int)fgets(STDIN);

for ($i = 1; $i <= $n; $i++) {
    echo "Введите число $i: ";
    $number = (int)fgets(STDIN);

    // Обрабатываем отрицательные числа
    $number = abs($number);

    // Разбираем число по цифрам
    $temp = $number;
    while ($temp > 0) {
        $digit = $temp % 10;
        if ($digit % 3 == 0 && $digit != 0) {
            $sum += $digit;
        }
        $temp = (int)($temp / 10);
    }
}

echo "Сумма цифр, делящихся на 3: $sum\n";
?>