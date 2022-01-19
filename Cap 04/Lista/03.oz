declare
fun {Fibbo X}
   if X =< 2 then 1
   else {Fibbo X-1} + {Fibbo X-2} end
end

fun {ConFibbo X}
   if X =< 2 then 1
   else thread {Fibbo X-1} end + thread {Fibbo X-2} end end
end

fun {ElapsedTime P Size}
   Start={Time.time} Fin Result
in
   Result = {P Size}
   Fin = {Time.time}
   Fin-Start
end

{Browse {ElapsedTime Fibbo 10}}
{Browse {ElapsedTime ConFibbo 10}} 