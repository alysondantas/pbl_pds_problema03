function [w,W] = bartlett_pbl(L)
    N = L;
    W = 0:N;
    a = [0:((N/2)+1)];
    w = 2*a/(N);
    w = [w w((N)/2:-1:1)]';
end