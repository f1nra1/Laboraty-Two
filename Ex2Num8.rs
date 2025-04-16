use std::io;

fn main() {
    let mut input = String::new();
    println!("Введите количество цветов: ");
    
    io::stdin().read_line(&mut input).expect("Ошибка при чтении ввода");
    let n: usize = input.trim().parse().expect("Ожидалось целое число");

    let mut water = Vec::new();
    println!("Введите потребность каждого цветка через пробел:");
    input.clear();
    io::stdin().read_line(&mut input).expect("Ошибка при чтении ввода");
    for w in input.split_whitespace() {
        let water_amount: i32 = w.trim().parse().expect("Ожидалось целое число");
        water.push(water_amount);
    }

    let mut input = String::new();
    println!("Введите объем лейки: ");
    io::stdin().read_line(&mut input).expect("Ошибка при чтении ввода");
    let capacity: i32 = input.trim().parse().expect("Ожидалось целое число");

    let mut steps = 0;
    let mut current_water = capacity;
    let mut position = -1; // начинаем с реки

    for i in 0..n {
        if current_water >= water[i] {
            steps += (position - i as i32).abs(); // Вычисляем расстояние
            current_water -= water[i];
            position = i as i32;
        } else {
            // идем к реке и обратно
            steps += (position - (-1)).abs(); // до реки
            position = -1;
            current_water = capacity;

            steps += (position - i as i32).abs(); // обратно к цветку
            current_water -= water[i];
            position = i as i32;
        }
    }

    println!("Общее количество шагов: {}", steps);
}

