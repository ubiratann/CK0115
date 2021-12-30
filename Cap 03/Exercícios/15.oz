declare
fun {QuickSort Ls}
   fun {QuickSortIter Ls E}
      case Ls
      of nil then E
      [] L|Lr then Ys Zs in
	 {Dividir Lr L Ys Zs}
	 {QuickSortIter Ys L|{QuickSortIter Zs E}}
      end
   end
   proc {Dividir Ls P ?Ys ?Zs}
      case Ls
      of nil then Ys=nil Zs=nil
      [] L|Lr then
	 if L < P then Ys = L|{Dividir Lr P $ Zs}
	 else Zs = L|{Dividir Lr P Ys $} end
      end
   end
in
   {QuickSortIter Ls nil}
end

{Browse {QuickSort [6 2 7 4 5 9 8 1]}}
