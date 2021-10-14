
/*
    a)
    Obtive apenas resultados 0 e 2. Não obtive o resultado 1. O resultado pode ser 1 porque a execução das threads é intercalada e devemos assumir que qualquer intercalação é possível. Na Figure 1.5 é mostrado um exemplo de como pode ser obtido o resultado 1, basicamente ocorre que a célula C está valendo 0 em ambas as threads e é somado o valor 1 resultando em dois resultados iguais a 1.
    
    b)
    A única forma que encontrei foi utilizando um Delay muito alto na primeira thread, dessa forma quando eu chamava o {Browse} só uma thread tinha sido chamada e o valor mostrado era 1.

    c)
    Utilizando a mesma “estratégia” que usei no item anterior, ele mostrava o valor 1.

*/