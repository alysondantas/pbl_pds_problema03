function [w] = hamming_pbl(L)
    N = L - 1;
    W = 0:N;
    w = 0.54 - 0.46 * cos(2*pi*W/N);
end