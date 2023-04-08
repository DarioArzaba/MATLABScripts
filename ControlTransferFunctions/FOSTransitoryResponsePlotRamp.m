%Respuesta transitoria de sistema de primer orden
%Respuesta a una rampa
t=[0:0.01:15];
r=t;
R=6;
C=(1/6)*0+0.2;
A=1;
num=[A*(1/(R*C))];
den=[1 1/(R*C)];
y=lsim(num,den,r,t);
plot(t,r,'+',t,y,'-');
title ('Respuesta a una rampa');
xlabel('Tiempo [s]');
grid;
