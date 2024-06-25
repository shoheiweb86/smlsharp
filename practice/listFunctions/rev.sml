fun rev l =
  let
    fun L (nil a) = a
      | L (hd :: tl, a) = L (tl, hd :: a) 
  in
    L (l, nil)
  end