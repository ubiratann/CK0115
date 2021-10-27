/*
a)

 Sim, o resultado será igual, podemos ver por:

<expression>1 andthen <expression>2 :: = if <expression>1 then <expression>2 else false end

que as expressões são logicamente equivalentes.

b) 
Algoritmo:
*/

declare
fun {OrElse BP1 BP2}
    if {BP1} then true else {BP2} end
end

/* 
 <expression>2 orelse <expression>2 :: = if <expression>1 then true else <expression>2 end

Explicação: A função OrElse seria equivalente a seguinte proposição lógica:
¬ <expression>1 →<expression>2
*/