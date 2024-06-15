fun S n =
  let 
    fun L (0, a) = a : int64
      | L (i, a) = L (i - 1, a + i)
  in
    L (n, 0)
  end