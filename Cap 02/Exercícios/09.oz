%a)

declare
fun {Sum1 N}
   if N == 0 then 0
   else Mid in
      Mid = {Sum1 N-1}
      N + Mid
   end
end
fun {Sum2 N S}
   if N == 0 then S
   else Mid1 Mid2 in
      Mid1 = N-1
      Mid2 = N + S
      {Sum2 Mid1 Mid2}
   end
end
{Browse {Sum1 10}}

/*
c) 

Quando executo {Sum1 100000000} é lançado esse erro:

FATAL: The active memory (732096825) after a GC is over the maximal heap size threshold: 732096600
Terminated VM 1
 

Quando executo {Sum2 100000000 0} é mostrado o resultado: 5000000050000000
Logo, a única execução que parece viável para números muito grandes é Sum2.
 */