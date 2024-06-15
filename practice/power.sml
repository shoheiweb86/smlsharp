fun Power (m, n) =
  let
    fun L (0, a) = a
      | L (m, a) = L (m - 1, a * n)
  in
    L (m, 1)
  end