function [w,W] = bartlett_pbl(L)
    N = L;
    W = 0:N;
    if rem(L,2) == 0
        a = [0:((N/2))];
    else
        a = [0:((N/2)+1)];
    end
    
    w = 2*a/(N);
    w = [w w((N)/2:-1:1)]';
end