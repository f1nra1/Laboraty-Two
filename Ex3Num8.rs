use std::io;

fn main() {
    let mut sum = 0;

    println!("Введите количество чисел:");
    let n: i32 = read_number();

    for i in 1..=n {
        println!("Введите число {}:", i);
        let mut number = read_number().abs(); // Модуль числа

        // Разбираем число по цифрам
        while number > 0 {
            let digit = number % 10;
            if digit % 3 == 0 && digit != 0 {
                sum += digit;
            }
            number /= 10;
        }
    }

    println!("Сумма цифр, делящихся на 3: {}", sum);
}

// Вспомогательная функция для чтения числа
fn read_number() -> i32 {
    loop {
        let mut input = String::new();
        io::stdin()
            .read_line(&mut input)
            .expect("Не удалось прочитать строку");

        match input.trim().parse() {
            Ok(num) => return num,
            Err(_) => println!("Пожалуйста, введите целое число:"),
        }
    }
}