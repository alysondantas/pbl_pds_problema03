clc;
clear all;
close all;
% Converter Herts para Rad = w = 2*pi*f/fs (fs = frequência de amostragem)
% =============== Parâmetros do FIltro Passa-Baixas Ideal =========
freq_s = 8000; % frequência de amostragem
fp = 1800; % frequência limite da banda de passagem 
fs = 2000; % frequência limite da banda de transição
fc = (fp + fs)/2; % frequência de corte (em Hertz)
%wc = (2*pi*fc)/freq_s; % frequência de corte (em rad)
% =============== Parâmetros da janela =================
ws = (2*pi*fs)/freq_s;
wp = (2*pi*fp)/freq_s;
wc = (ws+wp)/2;
Bw = abs((ws - wp))/(2*pi); % largura do lóbulo principal 
N  = ceil(3.3/(Bw));   % Comprimento da janela de Hamming
M  = N-1;              % Ordem do Filtro
% =============== Cálculo do Filtro ====================
n  = 0:M; % Vetor de tempo discreto.  
hd = PB_ideal(wc,M); % Resposta ao impulso ideal;
stem(hd);
title("Resposta ao impulso ideal");
figure;
% Equação da janela
wn = 0.54 - 0.46*cos((2*pi*n)/M);
stem(hd);
title("Janela h[n]");
figure;
freqz(wn);
figure;
% Truncamento da resposta ao impulso ideal.
hn = hd.*wn;
stem(hd);
title("Respota ao impulso truncada(Magnitude)");
figure;
[h,f] = freqz(hn);
plot(f*freq_s/(2*pi), 20*log10(abs(h)));
Hn = fft(hn);
figure;
plot(n,abs(Hn));
