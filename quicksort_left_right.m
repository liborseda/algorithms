% clc, clear
 A = rand(2094,1)
% 
 Ap = quicksort(A)

function [A comp] = quicksort(A) 
n = length(A);
A = quicksorti(A,1,n);

end

function A = quicksorti(A,ll,rr)
   [A m] = partitionlr(A,ll,rr);

%    if length(A) == 1;
        %sorted=A
        if ((m-ll)<=2)
            A=sort(A);    
        %    return
        else
            pi=1;
            A=quicksorti(A,ll,m-1);
        end
        if ((rr-m)<=2)
            A=sort(A);    
        %    return
        else
            pi=1;   
            A=quicksorti(A,m+1,rr);     
    end

end

function [A m] = partitionlr(A,ll,rr)
%n = length(A);
pi=1;
if length(A)==1
    return
else
    p=A(pi);

    A([ll pi]) = A([pi ll]);
    m = ll;
    %i = ll + 1;
     for j = (ll+1) : rr
         if A(j)<A(ll)
           m = m+1;
           A([m j]) = A([j m]);
         end
     end

     A([ll m]) = A([m ll]);
end
end