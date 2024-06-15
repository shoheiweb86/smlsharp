fun L (n, i, a) = if i > n then a
  else L (n, i + 1, a + i)
fun S2 n = L (n, 1, 0)