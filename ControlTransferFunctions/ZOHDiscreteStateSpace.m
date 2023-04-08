clc
clear
close all

numerador = [1 2];
denominador = [1 0.2 -0.1];
funcionTransferenciaContinua = tf(numerador, denominador);
% Discreta utilizando retenedor orden cero (ZOH) y Ts = 0.1
funcionTransferenciaDiscreta = c2d(funcionTransferenciaContinua, 0.1 ,'zoh');
EspacioDeEstados = idss(funcionTransferenciaDiscreta);
A = flip(fliplr(EspacioDeEstados.A.'))
B = flip(EspacioDeEstados.C.'/2)
C = flip(EspacioDeEstados.B.'*2)
D = EspacioDeEstados.D

numerador = [1 0.5];
denominador = [1 -0.1 0.3];
funcionTransferenciaContinua = tf(numerador, denominador);
% Discreta utilizando retenedor orden cero (ZOH) y Ts = 0.1
funcionTransferenciaDiscreta = c2d(funcionTransferenciaContinua, 0.1 ,'zoh');
EspacioDeEstados = idss(funcionTransferenciaDiscreta);
A = flip(fliplr(EspacioDeEstados.A.'))
B = flip(EspacioDeEstados.C.'/2)
C = flip(EspacioDeEstados.B.'*2)
D = EspacioDeEstados.D


