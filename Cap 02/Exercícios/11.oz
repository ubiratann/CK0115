/*

Ao executarmos o comando {IsEvenn N} teremos uma pilha de execução como a seguinte:

1ª execução
([({IsEven X}, {X => x1})], {x1 = N1})

2ª execução
([({IsOdd X}, {X => x2})], {x2 = N2})

3ª execução
([({IsEven X}, {X => x3})], {x3 = N3})

… (e por aí vai)
Sendo assim, vemos que a pilha de execução tem tamanho constante, dada a explicação no livro texto que afirma que funções que possuem apenas uma chamada de função em seu corpo e essa chamada já foi executada antes é uma propriedade que garante tamanho constante da pilha.

A explicação para {IsOdd N} é análoga.


*/