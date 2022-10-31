function [w] = bartlett_pbl(L)
    N = L - 1;
    w = 2*(0:(N)/2)/(N);
    w = [w w((N)/2:-1:1)]';
end