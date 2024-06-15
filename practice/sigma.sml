fun Sigma f 0 = 0
  | Sigma f n = f n + Sigma f (n - 1)