n = gets.to_i
m = gets.to_i
k = gets.split(' ').map(&:to_i)

def solve
  k.sort

  flag = false

  for a in (0..n) do
    for b in (0..n) do
      for c in (0..n) do
        if binary_search(m - k[a] - k[b] - k[c])
      end
    end
  end



def binary_search(x)
  #xの存在範囲はk[l],k[l+1]...,k[r-1]
  l = 0 #探索範囲の最小値のインデックス(始点)
  r = n #捜索範囲の最大値のインデックス(終点)

  #範囲に何も含まれなくなるまで繰り返す
  while r - l >= 1 do
    i = (l + r)/2 #探索範囲中央値のインデックス
    if k[i] == x
      return true
    elsif k[i] < x #右半分を探索
      l = i + 1 #始点を中央値＋１にする
    else #左半分を探索
      r = i #終点を中央値にする
    end
  end
  return false
end



