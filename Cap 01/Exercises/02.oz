declare Num Den Comb

fun {Num N K}
    if K==0 then 1 else N * { N K-1 } end
end

% fun{Den K}
%     if K == 0 then 1 else K * {Den K-1} end
% end

% fun {Comb N K}
%     if K == 0 then 1 else {Num N K} div {Den K} end;
% end

% {Browse 1}
{Browse {Num 5 3}}