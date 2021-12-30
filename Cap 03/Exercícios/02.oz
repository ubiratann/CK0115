declare
fun {RaizCub X}

   fun {RaizCubIter Y}
      if {Abs X-Y*Y*Y}/X < 0.000001 then Y
      else {RaizCubIter {Aproxima Y}} end
   end

   fun {Aproxima Y}
      (X/(Y*Y) + 2.0*Y)/3.0
   end

   Y = 1.0
in
   {RaizCubIter Y}
end

{Browse {RaizCub 3.0}}