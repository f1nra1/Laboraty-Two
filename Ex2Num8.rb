puts "Введите количество цветов: "
n = gets.to_i

puts "Введите потребность каждого цветка через пробел:"
water = gets.split.map(&:to_i)

puts "Введите объем лейки: "
capacity = gets.to_i

steps = 0
current_water = capacity
position = -1  # начинаем с реки

(0...n).each do |i|
  if current_water >= water[i]
    steps += (position - i).abs
    current_water -= water[i]
    position = i
  else
    # идем к реке и обратно
    steps += (position - (-1)).abs
    position = -1
    current_water = capacity

    steps += (position - i).abs
    current_water -= water[i]
    position = i
  end
end

puts "Общее количество шагов: #{steps}"

