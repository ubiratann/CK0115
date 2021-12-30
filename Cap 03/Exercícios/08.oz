declare
fun {Append Xs Ys}
   fun {AppendReversoIter Xs Ys}
      case Xs
      of nil then Ys
      [] X|Xr then {AppendReversoIter Xr X|Ys} end
   end
   fun {Reverso Xs}
      fun {ReversoIter Xs A}
	 case Xs
	 of nil then A
	 [] X|Xr then {ReversoIter Xr X|A} end
      end
   in
      {ReversoIter Xs nil}
   end
in
   {AppendReversoIter {Reverso Xs} Ys}
end

