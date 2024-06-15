fun L (a, 0) = a
  | L (a, i) = L (a+i ,i-1)
fun S n = L (0, n)