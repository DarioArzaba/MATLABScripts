clc
clear
close all

% FINAL

% Muestreo y retenedor, funcion transferencia ZOH
Hs = tf([0 1 2],[1 0.2 -0.1]);
Hz = c2d(Hs, 0.1, 'zoh')
% step(Hs, '-', Hz, '--');

