function [w] = hann_pbl(L)
    N = L - 1;
    W = 0:N;
    w = 0.5 - 0.5 * cos(2*pi*W/N);
end