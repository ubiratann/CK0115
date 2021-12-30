fun {Fatorial N}
    fun {FatorialIter N A}
       if N==1 then A
       else {Fatorial N-1 N*A} end
    end
 in
    {FatorialIter N 1}
 end