fun map f l =
  let
    fun L (nil, a) = rev a
      | L (hd :: tl, a) = L (tl, f hd :: a) 
  in
    L (l, nil)
  end