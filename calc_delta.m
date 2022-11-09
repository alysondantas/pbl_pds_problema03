clc;
clear all;
db_rp = 0.07;

dp_rs = 0.07;

result_deltap = (10^(db_rp/20))-1


result_deltas = 10^(dp_rs/-20)

delta = result_deltap

if result_deltas < result_deltap
    delta = result_deltas
end

% Retangular => delta = 0.0891
% Hanning    => delta = 0.0063
% Hamming    => delta = 0.0022
% Blackman   => delta = 0.0001
% Bartlett   => delta = 0.0562