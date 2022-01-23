l = gets.to_i
n = gets.to_i
x = gets.split(' ').map(&:to_i)
min_t = 0
max_t = 0


x.each do |i|
  min_t = [min_t, [i, l - i].min].max
end

x.each do |i|
  max_t = [max_t, [i, l - i].max].max
end

p min_t
p max_t