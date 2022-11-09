function [w, W] = blackman_pbl(L)
    N = L ;
    W = 0:N;
    w = 0.42 - 0.5 * cos(2*pi*W/N) + 0.08 * cos(4*pi*W/N);
end