structure PrintInterface = 
struct
  fun makePrintString s =
    "structure " 
    ^ s 
    ^ "=" 
    ^ s 
    ^ ";";

  fun execPrint s = 
    let
      val S =
        "smlsharp <<EOF | tail -n +2 > Results/"
        ^ s
        ^ ".txt\n"
        ^ makePrintString s
        ^ "\n"
        ^ "EOF\n"
    in
      (OS.Process.system S; ())
    end
end