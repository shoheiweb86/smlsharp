fun S3 n =
  let 
    fun L (n, i, a) = if i > n then a
      else L (n, i + 1, a + i)
  in
    L (n, 1, 0)
  end