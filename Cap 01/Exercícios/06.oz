declare GenericPascal ShiftLeft ShiftRight OpList Print

fun {ShiftLeft L}
    case L of H|T then
        H|{ShiftLeft T}
    else [0] end
end

fun {ShiftRight L} 0|L end

fun {OpList Op L1 L2}
    case L1 of H1|T1 then
        case L2 of H2|T2 then
            {Op H1 H2}|{OpList Op T1 T2}
        end
    else nil end
end

fun {Add X Y} X+Y end

fun {Sub X Y} X-Y end

fun {Mul X Y} X*Y end

fun {Mul1 X Y} (X+1)*(Y+1) end

fun {Xor X Y} if X==Y then 0 else 1 end end

fun {FastPascal N} {GenericPascal Add N} end

fun {GenericPascal Op N}
    if N == 1 then [1]
    else L in  
        L = {GenericPascal Op N-1}
        {OpList Op {ShiftLeft L} {ShiftRight L}}
    end
end

{Browse {GenericPascal Add 10}}
{Browse {GenericPascal Sub 10}}
{Browse {GenericPascal Mul 10}}
{Browse {GenericPascal Mul1 10}}

/*

a) O zero adicionado nos shifts zera a multiplicação da linha calculada.

    Saída de Mul1 da décima linha: 
    10 | 6235300 | 160344312228246705825060 | 49116946500844767398714340184254871599279813644844 | 505756353132539355991535788904396967700352784465846135098293311191732044 |
    505756353132539355991535788904396967700352784465846135098293311191732044 | 49116946500844767398714340184254871599279813644844 | 160344312228246705825060| 6235300 | 10
*/


%b)

for I in 1..10 do {Browse  {GenericPascal Add I}} end
for I in 1..10 do {Browse  {GenericPascal Mul I}} end
for I in 1..10 do {Browse  {GenericPascal Mul1 I}} end
for I in 1..10 do {Browse  {GenericPascal Sub I}} end






