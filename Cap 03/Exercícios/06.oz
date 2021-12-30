fun {Reverse Xs}
    fun {IterReverse Xs Ys}
       case Xs
       of nil then Ys
       [] X|Xr then {IterReverse Xr X|Ys}
       end
    end
 in
    {IterReverse Xs nil}
 end