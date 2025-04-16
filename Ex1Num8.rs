use std::io;

fn main() {
    let mut input = String::new();
    println!("Введите n: ");
    
    io::stdin().read_line(&mut input).expect("Ошибка при чтении ввода");
    let n: usize = input.trim().parse().expect("Ожидалось целое число");

    for i in 1..=n {
        for ch in (b'A' + (n - i) as u8..=b'A' + (n - 1) as u8).rev() {
            print!("{} ", ch as char);
        }
        println!();
    }
}

