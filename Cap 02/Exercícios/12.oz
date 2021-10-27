try <s>1 finally <s>2 end ::=

local Flag = {NewCell false} E in
   try
      <s>1
   catch X then
      E = X
      Flag := true
   end
   <s>2
   if Flag then raise E end end
end
