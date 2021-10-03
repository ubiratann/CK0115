% item a:
declare Comb1 Comb2 Den Num

fun {Num N K J}
    if K==0 then 1 else  (N-J) * {Num N K-1 J+1} end
end

fun {Den K}
    if K == 0 then 1 else K * {Den K-1} end
end

fun {Comb1 N K}
    if K == 0 then 1 else {Num N K 0} div {Den K} end
end

{Browse {Comb1 10 9}}


%item b
fun {Comb2 N K}
    if K == 0 then 1
    else
        if K > (N div 2) then 
            {Num N N-K 0}  div {Den N-K}
        else 
            {Num N K 0} div {Den K} 
        end
    end
end

{Browse {Comb2 10 9}}



/*
1 -> 3 * ( 2 * ( 1 * ( ) ) )

*/