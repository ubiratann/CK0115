
declare Max3 Max5
proc {SpecialMax Value? SMax}
    fun{SMax X}
        if X> Value then X else Value end
    end
end

{SpecialMax 3 Max3}
{SpecialMax 5 Max5}

% Explicação:
% Quando executarmos {Browse [{Max3 4} {Max5 4}]}, as variáveis são ligadas e então o resultado [4,5] será mostrado no Browse.
