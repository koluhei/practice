#再帰関数の練習

def fact(n) #階乗の計算
  return 1 if n == 0
  return n * fact(n - 1)
end  

def fib(n) #フィボナッチ数列の計算
  return n if (n <= 1)
  return fib(n - 1) + fib(n - 2)
end




