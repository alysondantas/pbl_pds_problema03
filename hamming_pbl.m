function [w,W] = hamming_pbl(L)
    N = L;
    W = 0:N;
    w = 0.54 - 0.46 * cos(2*pi*W/N);
end