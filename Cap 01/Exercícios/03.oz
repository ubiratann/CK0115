declare Pascal AddList ShiftLeft ShiftRight

fun {Pascal N}
    if N==1 then [1]
    else
        {AddList {ShiftLeft {Pascal N-1}} {ShiftRight {Pascal N-1}}}
    end
end

fun {ShiftLeft L}
    case L of H|T then
        H|{ShiftLeft T}
    else [0] end
end

fun {ShiftRight L} 0|L end

fun {AddList L1 L2}
    case L1 of H1|T1 then
        case L2 of H2|T2 then
            H1+H2|{AddList T1 T2}
        end
    else nil end
end

{Browse {ShifLetft 1}}

/*
    Para provar que a função Pascal está correta, temos primeiramente que provar que suas funções auxiliares estão corretas 
    o que vai implicar que ela está correta também.
    
    Prova ShiftRight:
        A função possui somente um comando que é adicionar um zero mais a esquerda de qualquer entrada, logo não precisamos provar nada.
    
    Prova ShiftLeft:
        Caso Base:
            Seja L uma lista que possui um elemento, então shifleft será chamado para a sua cauda, que é nula,
            e retorna [0].
        Hipótese de Indução:
          Supona que a chamada de shiftleft na cauda sempre funciona, pois em algum ponto da execução a cauda é nula.
        Passo:
            Como a chamada funciona para a cauda, basta vermos que se adicionarmos a cabeça à lista, a função continua funcionando, pois ela já funcionava na cauda.
    
    Prova AddList:
        Case Base:
            Sejam L1 e L2 duas com 1 elemento, então AddList soma a cabeça das listas e é chamado sob suas caudas,
            na chamada das caudas ele retorna nil. Logo o caso base funciona.  
        Hipótese de Indução:
            Suponha que AddList sempre funciona na cauda pois em algum ponto da execução as caudas vão ser nulas.
        Passo:
            Como por hipótese a chamada sempre funciona na cauda, é fácil ver que se adicionarmos a cabeça à lista, a execução continuará funcionando.

    Pascal: Prova por indução
        Base:
            Seja N = 1, a função {Pascal N} retorna [1], o que está correto.
        Hipótese de Indução:
            Seja K tal que , 1 <= K <= N, onde K é um número natural qualquer, então a função Pascal funciona corretamente.
        Passo:
            Seja K < J  com J = K+1, se executarmos {Pascal K}, veremos que nas chamadas internas de Pascal é chamado {Pascal J-1}, 
            repare que J-1 = K, que por hipótese já funciona.
*/