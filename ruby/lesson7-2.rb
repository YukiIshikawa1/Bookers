puts "計算を始めます"
puts "何回計算を繰り返しますか？"

x = gets.to_i

i = 1

while i <= x  do
  puts "#{i}回目の計算"
  puts "２つの数値を入力してください"
  
  a = gets.to_i
  b = gets.to_i
  puts "計算結果を出力します"
  puts "a+b=#{a+b}"
  puts "a-b=#{a-b}"
  puts "a*b=#{a*b}"
  puts "a/b=#{a/b}"
  
  i += 1
end