clc
clear
close all

T1 = transl2(1,2)*trot2(30, 'deg')
%trplot2(T1, 'frame', '1', 'color', 'b')
%hold on
T2 = transl2(2,1)
%trplot2(T2, 'frame', '2', 'color', 'r')
T3 = T1*T2
%trplot2(T3, 'frame', '3', 'color', 'g')
T4= T2*T1
%trplot2(T4, 'frame', '4', 'color', 'c')

% Coordenadas de P con repecto Marco 1
P1 = [0;2;0]
% plot_point(P1, 'label', 'P', 'solid', 'ko')
T5 = trot2(30, 'deg')
P1Ref = inv(T5)*P1
%hold off

% Rotacion con 3 angulos euler ZYZ (Matriz Rot)
R1a = rotz(30)*roty(90)*rotz(45)
R1b = eul2r(30,90,45,'deg')

% Ejercicio Traslacion 
P2 = [3;7;0;1]
T6a = trot2(30, 'deg')
T6b = [10; 5 ; 0]
T6 = rt2tr(T6a, T6b)
P2Ref = (T6)*P2

% ETS2 y ETS3 para ver Cin Dir de serie de articulaciones
% E = Rz('q1')*Tx(a1) para una rotacion ang q1
% E.fkine(61.2, 'deg') o E.teach para interactivo


