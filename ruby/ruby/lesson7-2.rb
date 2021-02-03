puts "計算を始めます"
puts "何回繰り返しますか"

input = gets.to_i

x = 1
while x <= input do
  puts "#{x}回目の計算"
  puts "2つの値を入力してください"

  a = gets.to_i
  b = gets.to_i

  puts "a=#{a}"
  puts "b=#{b}"

  puts "a+b=#{a+b}"
  puts "a-b=#{a-b}"
  puts "a*b=#{a*b}"
  puts "a/b=#{a/b}"

  x += 1
end