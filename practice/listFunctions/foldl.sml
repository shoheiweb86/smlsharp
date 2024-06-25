val sum = fn l => foldl (fn (x, y) => x + y) 0 l

fun rev l = foldl (fn (x, y) => x :: y) nil l

fun map f l = foldl (fn (x, y) => f x :: y nil l