SMerge = proc {$ Xs Ys ?S}
    case Xs of nil then S = Ys
        else
            case Ys of nil then S = Xs
            else
                case Xs of X|Xr then
                    case Ys of Y|Yr then
                        if X=<Y then
                            local Mid in
                                S = X|Mid
                                {SMerge Xr Ys Mid}
                        end
                    else
                        local Mid in
                            S = Y|Mid
                            {SMerge Xs Yr Mid}
                        end
                    end
                end
            end
        end
    end
end

