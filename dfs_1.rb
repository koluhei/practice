#部分和問題
n = gets.to_i #整数の数
a = gets.split(' ').map(&:to_i) #与えられる整数の配列
k = gets.to_i #和
#iまででsumを作り、のこりi以降を調べる
def dfs(i, sum)
  #n個決め終わったら、sumがkと等しいかを返す
  if i == n
    if sum == k
      return true
    else
      return false
    end
  end
  
  #a[i]を使わない場合
  if dfs(i + 1, sum)
    return true
  end

  #a[i]を使う場合
  if dfs(i + 1, sum + a[i])
    return true
  end

  return false
  
end

if dfs(0, k)
  puts "YES"
else
  puts "NO"
end