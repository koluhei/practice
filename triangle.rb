n = gets.to_i
a = gets.split(" ").map(&:to_i)
ans = 0

for i in 0..(n - 1) do #ここで選び方を計算（樹形図を描いてみるとわかりやすい）
  for j in (i + 1)..(n - 1) do 
    for k in (j + 1)..(n - 1) do
      len = (a[i] + a[j] + a[k]) #三角形の周の長さ
      ma = [a[i], a[j], a[k]].max #一番長い辺
      if ma < (len - ma) #三角形が成立するか
        ans = [ans, len].max #三角形の周の長さが今までの答えより長ければ更新
      end
    end
  end
end

p ans
