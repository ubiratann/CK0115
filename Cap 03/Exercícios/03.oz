declare
fun {Bissecao F A B}
   fun {BissecaoIter A B}
      X = (A+B)/2.0
      V = {F X}
   in
      if {AprxAbsoluta V} then X
      else A1 B1 in
	 A1#B1={Aproxima A B V X}
	 {BissecaoIter A1 B1}
      end
   end
   fun {AprxAbsoluta V}
      {Abs V} < 0.00001
   end
   fun {Aproxima A B V X}
      if V > 0.0 then A#X
      else X#B end
   end
in
   {BissecaoIter A B}
end

{Browse {Bissecao fun{$ X} X*X - 3.0 end 0.0 3.0}}
