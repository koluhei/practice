int = gets.split("").map(&:to_i)
int.pop
count = gets.to_i
count.times do
    s_e = gets.split(" ").map(&:to_i)
    s = s_e[0] - 1
    e = s_e[1] - 1
    s.upto(e) do |i|
        if int[i] == 1
            int[i] = 0
        elsif int[i] == 0
            int[i] = 1
        end
        p int
    end
end
p int.join.to_i