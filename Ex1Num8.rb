print "Введите n: "
n = gets.to_i

(1..n).each do |i|
  chars = ('A'.ord + n - 1).downto('A'.ord + n - i) do |ch|
    print "#{ch.chr} "
  end
  puts
end

