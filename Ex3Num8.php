<?php
echo "Введите количество чисел: ";
$n = (int)fgets(STDIN);

$sum = 0;

for ($i = 0; $i < $n; $i++) {
    echo "Введите число " . ($i + 1) . ": ";
    $input = trim(fgets(STDIN)); // Вводим одно число как строку

    // Разбираем каждое число
    for ($j = 0; $j < strlen($input); $j++) {
        $c = $input[$j];

        if (is_numeric($c)) { // Проверяем, является ли символ цифрой
            $digit = (int)$c; // Преобразуем символ в цифру
            if ($digit % 3 == 0) {
                $sum += $digit;
            }
        }
    }
}

echo "Сумма цифр, делящихся на 3: " . $sum . "\n";
?>

