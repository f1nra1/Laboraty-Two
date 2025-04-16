puts "Введите количество чисел: "
n = gets.to_i

sum = 0

n.times do |i|
  print "Введите число #{i + 1}: "
  input = gets.chomp

  input.each_char do |c|
    if c =~ /\d/  # Проверяем, цифра ли это
      digit = c.to_i
      sum += digit if digit % 3 == 0
    end
  end
end

puts "Сумма цифр, делящихся на 3: #{sum}"

