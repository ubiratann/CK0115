

    %Exemplos 01: O procedim ento Browse
        {Browse 9999 }
    %   { }: são usados para chamar funções ou procedimentos
    %   Browse x : procedimento que recebe um argumento e mostra ele em uma nova janela (ou janela ja aberta)

    %Exemplos 02: Sintaxe de variáveis
        %declare: declara uma variavel nova, variaveis so podem ser atribuidas 1 vez
        %         se declarada uma variavel com o mesmo nome, a antiga é sobrescrita
        %         calculos que usaram a variavel antiga não são atualizados
        
        %indentificador: variaveis sempre começam com uma letra maiúscula seguida de números ou letras
        declare V = 12
        {Browse V}
    
    %Exemplos 03: Criando funções
        %função que calcula o fatorial de n recursivamente
        declare fun {Fact N } 
            if N==0 then 1 else  N * {Fact N-1} end
        end
        {Browse {Fact 10}}
        
        %função que calcula a combinação de n tomado por k recursivamente
        declare fun {Comb N K}
            {Fact N} div ({Fact K} * {Fact N-K})
        end
        {Browse {Comb 5 3}}
    
    %Exemplos 04: Listas
        
        declare 
        H = 4
        T = [1 2 3]
        {Browse T|H} % não cria nova lista
        {Browse H|T} % cria nova lista

        declare L = [1]
        {Browse L.1} % acessa a cabeça da lista [1]
        {Browse L.2} % acessa a cauda da lista [1:]
        
        case L of H|T then {Browse H} {Browse T} end %atribui a cabeça da lista a H e a cauda a T

    %Exemplo 05: Lazy evaluation (Valoração preguiçosa)
        declare fun {Lazy Ints N}
            N | {Ints N+1}
        end
    
    %Exemplo 06: DataFlow e Threads
        % neste exemplo, mesmo com o delay de 1 seg. a thread executa a multiplicação
        declare X in
        thread {Browse start} {Browse X*X} end
        {Delay 1000} X = 999
        




