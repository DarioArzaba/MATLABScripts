%Respuesta transitoria de sistema de primer orden
%Respuesta al escalón unitario
t=[0:0.01:15];
R=6;
C=0.2;     
A=1;
num=[A*(1/(R*C))];
den=[1 1/(R*C)];
y=step(num,den,t);
y1=1-exp(-t/(R*C));
plot(t,y);
title ('Respuesta a escalón unitario');
xlabel('Tiempo [s]');
grid;
figure
plot(t,y1,'r')
grid
