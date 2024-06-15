fun L (a, 0) = a
  | L (a, i) = L (a + i, i - 1)
fun S1 n = L (0, n)