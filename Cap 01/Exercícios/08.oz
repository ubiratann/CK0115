/*
    Como a variavel e a celula sao declaradas dentro da chamada da funcao
    elas sao realocadas na mameoria a cada chamada de Accumalet, logo para fazer
    com que as saidas sejam as desejadas, precisamos declarar a variavel e a celula
    fora da funcao, assim o valor sera acumulado.

*/

declare Accumulate Acc

%Correto
Acc in
Acc={NewCell 0}
    fun {Accumulate N}
        Acc:=@Acc+N
        @Acc
    end



{Browse {Accumulate 5}}
{Browse {Accumulate 100}}
{Browse {Accumulate 45}}

