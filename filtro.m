clc;
clear all;
close all;
% Converter Herts para Rad = w = 2*pi*f/fs (fs = frequência de amostragem)
% =============== Parâmetros do FIltro Passa-Baixas Ideal =========
freq_s = 8000; % frequência de amostragem
fp = 1500; % frequência limite da banda de passagem 
fs = 2000; % frequência limite da banda de transição
fc = (fp + fs)/2; % frequência de corte (em Hertz)
wc = (2*pi*fc)/freq_s; % frequência de corte (em rad)
At_p = 0.1; % atenuação máxima na banda de passagem (em dB)
At_p = 50; % atenuação mínima na banda de rejeição (em dB)
% =============== Parâmetros da janela =================
ws = (2*pi*fs)/freq_s;
wp = (2*pi*fp)/freq_s;  
Bw = (ws - wp)/(2*pi); % largura do lóbulo principal 
N  = ceil(3.3/(Bw));   % Comprimento da janela de Hamming
M  = N-1;              % Ordem do Filtro
% =============== Cálculo do Filtro ====================
n  = 0:M; % Vetor de tempo discreto.  
hd = PB_ideal(wc,M); % Resposta ao impulso ideal;
stem(hd);
title("Resposta ao impulso ideal");
figure;
% Equação da janela
wn = 0.54 - 0.46*cos((2*pi*n)/(M));
freqz(wn);
figure;
% Truncamento da resposta ao impulso ideal.
hn = hd.*wn;
[f,Y] = my_fft2(n,hn,freq_s);
%[h, f] = freqz(hn,n,freq_s);
plot(f,Y);

