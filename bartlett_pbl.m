function [w,W] = bartlett_pbl(L)
    N = L - 1;
    W = 0:N;
    
    w = 2*(0:(N)/2)/(N);
    w = [w w((N)/2:-1:1)]';
end