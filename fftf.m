% Esta � uma fun��o que faz a transformada de Fourier de um sinal e o
% plota no dom�nio da frequ�ncia
%
% 10/10/12
%
% [X, freq] = fftf(x, Fs)
%
% x - Sinal de Entrada
% Fs - Frequencia de amostragem do sinal
% X - Modulo do sinal no dominio da frequencia
% freq - Vetor de frequencias

function [X, freq] = fftf(x, Fs)

N=length(x);
k=0:N-1;
T=N/Fs;
freq=k/T;
X=fftn(x)/N;
cutOff=ceil(N/2);
X=X(1:cutOff);
figure;
plot(freq(1:cutOff),abs(X));
title('Espectro de Frequências');
%xlabel('Frequência (Hz)');
ylabel('Amplitude');