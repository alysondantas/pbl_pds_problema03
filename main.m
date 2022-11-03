clc;
clear;
close all;

M = 52;

[w,W] = hamming_pbl(M);

stem(W,w);

figure;

%freqz(w,0.5, 2^16, W)
freqz(w);

%[w2,W2] = bartlett_pbl(20);
%stem(W2,w2);