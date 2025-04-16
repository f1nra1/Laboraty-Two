<?php
echo "Введите n: ";
$n = (int)fgets(STDIN);

for ($i = 1; $i <= $n; $i++) {
    for ($ch = ord('A') + $n - 1; $ch >= ord('A') + $n - $i; $ch--) {
        echo chr($ch) . " ";
    }
    echo PHP_EOL;
}
?>

