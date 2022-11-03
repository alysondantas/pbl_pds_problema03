function [w, W] = hann_pbl(L)
    N = L - 1;
    W = 0:N;
%     w = 0.5 - 0.5 * cos(2*pi*W/N);
    w = 0.5 * (1 - cos(2*pi*W/N));
end