structure MakeDict = 
struct
  datatype ('key, 'value) dict
    = EmptyDict
    | Node of ('key * 'value) * ('key, 'value) dict * ('key, 'value) dict
  exception Empty
  fun makeDict comp =
    let
      val empty = EmptyDict
      fun find (dict, key) = 
        case dict of
          EmptyDict => raise Empty
        | Node ((k, v), L, R) => 
          (case comp (k, key) of
            EQUAL => v
          | LESS => find (R, key)
          | _ => find (L, key))

      fun enter ((key, value), dict) = 
        case dict of
          EmptyDict => Node ((key, value), EmptyDict, EmptyDict)
        | Node ((k, v), L, R) =>
          (case comp (k, key) of
            EQUAL => Node ((key, value), L, R)
          | LESS => Node ((k, v), L, enter ((key, value), R))
          | _ => Node ((k, v), enter ((key, value), L), R))
    in
      {find = find, empty = empty, enter = enter}
    end
end  