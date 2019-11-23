
function sorted = mergesort5(A)
    n=length(A);
    if n==1
        sorted = A;
    else
        mid = ceil(n/2);       
        sorted_l = mergesort5(A(1:mid));
        sorted_r = mergesort5(A(mid+1:n));
        sorted = merge(sorted_l,sorted_r);
    end
end

function z = merge(L,R)
nL = length(L); nR = length(R); z = zeros(1,nL+nR);
i = 1; j = 1; k = 1;

    for k=1:(nL+nR);
            if i>nL
                z(k)=R(j); j=j+1;         
            elseif j>nR
                z(k)=L(i); i=i+1;
            elseif L(i)<=R(j);
                z(k)=L(i); i=i+1;
            elseif L(i)>R(j);
                z(k)=R(j); j=j+1;
            end
    end
   
end