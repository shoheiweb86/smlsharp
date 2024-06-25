fun copyJson json =
  case json of
    BOOL bool => BOOL bool
  | NUMBER string => NUMBER string
  | STRING string => STRING string
  | NULL => NULL
  | ARRAY jsonList => ARRAY (map copyJson jsonList)
  | OBJECT stringJsonList =>
    OBJECT (map (fn (string, json) => (string, copyJson json)) stringJsonList)