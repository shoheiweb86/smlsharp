fun length l = 
  let
    fun L (nil, a) = a
      | L (h :: t, a) = L (t, a + 1)
  in
    L (l, 0)
  end