structure Tree =
struct
  datatype 'a tree = 
    EmptyTree
  | Node of 'a * 'a tree * 'a tree

  fun copyTree tree = 
    case tree of
      EmptyTree => EmptyTree
    | Node (a, L, R) => Node(a, copyTree L, copyTree R)

  fun height tree = 
    case tree of
      EmptyTree => 0
    | Node (a, L, R) => 1 + (if height L > height R then height L else height R)

  fun size tree = 
    case tree of
      EmptyTree => 0
    | Node (a, L, R) => 1 + size L + size R

  fun sum tree = 
    case tree of
      EmptyTree => 0
    | Node (num, L, R) => num + sum L + sum R

  fun traverse tree =
    case tree of
      EmptyTree => nil
    | Node(a, L, R) => a :: traverse L @ traverse R

  fun mkTree 0 = EmptyTree
    | mkTree n =  Node(n, mkTree (n - 1), mkTree (n - 1))
end