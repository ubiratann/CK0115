declare A B C D in
    thread D=C+1 end
    thread C=B+1 end
    thread A=1 end
    thread B=A+1 end
{Browse D}

/*
As threads são criadas na ordem D,C,A,B porém os resultados são iguais devido a dependência que existe entre as threads, onde por exemplo a thread D "espera" a execução da thread C, que por sua vez espera a execução da B e assim por diante
*/