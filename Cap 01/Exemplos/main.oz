

    %Exemplo 01: O procemiento Browse
        {Browse 9999 }
    %   { }: são usados para chamar funções ou procedimentos
    %   Browse x : procedimento que recebe um argumento e mostra ele em uma nova janela (ou janela ja aberta)

    %Exemplo 02: Sintaxe de variáveis
        %declare: declara uma variavel nova, variaveis so podem ser atribuidas 1 vez
        %         se declarada uma variavel com o mesmo nome, a antiga é sobrescrita
        %         calculos que usaram a variavel antiga não são atualizados
        
        %indentificador: variaveis sempre começam com uma letra maiúscula seguida de numeros ou letras
        declare V = 12
        {Browse V}
    
    %Exemplo 03, 04: Criando funções
        %função que calcula o fatorial de n recursivamente
        declare fun {Fact N } 
            if N==0 then 1 else  N * {Fact N-1} end
        end
        {Browse {Fact 10}}
        
        %função que calcula a combinação de n tomado por k recursivamente
        declare fun {Comb N K}
            {Fact N} div {Fact K} * {Fact N-K} %usa o div porque a / so faz divisões inteiras
        end
        {Browse {Comb 5 3}}







