
function [count,sorted] = mergesort6(A)
    n=length(A);
    if n==1
        sorted = A;
        count = 0;
       
    else
        mid = ceil(n/2);       
        [count1,sorted_l] = mergesort6(A(1:mid));
        [count2,sorted_r] = mergesort6(A(mid+1:n));
        [crosscount,sorted] = merge_n_count(sorted_l,sorted_r);
        count = count1 + count2 + crosscount;
    end
end

function [crosscount,z] = merge_n_count(L,R)
nL = length(L); nR = length(R); z = zeros(1,nL+nR);
i = 1; j = 1; k = 1;
crosscount = 0;
    for k=1:(nL+nR);
            if i>nL
                z(k)=R(j); j=j+1;         
            elseif j>nR
                z(k)=L(i); i=i+1;
            elseif L(i)<=R(j);
                z(k)=L(i); i=i+1;
            elseif L(i)>R(j);
                z(k)=R(j); j=j+1;
                crosscount = crosscount + (nL + 1 - i);
            end
    end
   
end