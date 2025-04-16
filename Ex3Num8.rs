use std::io;

fn main() {
    let mut input = String::new();
    println!("Введите количество чисел: ");
    
    io::stdin().read_line(&mut input).expect("Ошибка при чтении ввода");
    let n: usize = input.trim().parse().expect("Ожидалось целое число");

    let mut sum = 0;

    for i in 0..n {
        let mut input = String::new();
        println!("Введите число {}: ", i + 1);
        
        io::stdin().read_line(&mut input).expect("Ошибка при чтении ввода");

        for c in input.chars() {
            if c.is_digit(10) { // Проверяем, является ли символ цифрой
                let digit: i32 = c.to_digit(10).unwrap() as i32; // Преобразуем символ в цифру
                if digit % 3 == 0 {
                    sum += digit;
                }
            }
        }
    }

    println!("Сумма цифр, делящихся на 3: {}", sum);
}

