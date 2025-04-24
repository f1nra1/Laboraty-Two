sum = 0

print "Введите количество чисел: "
n = gets.chomp.to_i

(1..n).each do |i|
  print "Введите число #{i}: "
  number = gets.chomp.to_i.abs  # Модуль числа для обработки отрицательных

  # Разбираем число по цифрам
  temp = number
  while temp > 0
    digit = temp % 10
    sum += digit if digit % 3 == 0 && digit != 0
    temp /= 10
  end
end

puts "Сумма цифр, делящихся на 3: #{sum}"