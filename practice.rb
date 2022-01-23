count = gets.to_i
x = gets.split(' ').map(&:to_i)
  r_x = x[0]
  g_x = x[1]
  b_x = x[2]
ans = []

count.times do |i|
  side_color = gets.split(' ')
  side = side_color[0]
  color = side_color[1]
  if side == "R"
    case color
    when "R" 
      r_x += 1
    when "G"
      g_x += 1
    when "B"
      b_x += 1
    when "Y"
      r_x += 1
      g_x += 1
    when "M"
      r_x += 1
      b_x += 1
    when "C"
      b_x += 1
      g_x += 1
    when "W"
      r_x += 1
      b_x += 1
      g_x += 1
    end
  elsif side == "L"
    case color
    when "R"
      r_x -= 1
    when "G"
      g_x -= 1
    when "B"
      b_x -= 1
    when "Y"
      r_x -= 1
      g_x -= 1
    when "M"
      r_x -= 1
      b_x -= 1
    when "C"
      b_x -= 1
      g_x -= 1
    when "W"
      r_x -= 1
      b_x -= 1
      g_x -= 1
    end
  end
  puts r_x
  puts g_x
  puts b_x
  if r_x == g_x && g_x == b_x
    ans << r_x
  end
end
if ans.any?
  puts ans[0]
else
  puts "no"
end