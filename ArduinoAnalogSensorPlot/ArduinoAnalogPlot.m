clear
clc

delete(instrfind({'port'},{'COM30'}));
a=arduino('com30','uno');

% Si se quire una x dinamica utiliza
% Como segundo argumento axis (t+numero)
% Si se quire una x fija utiliza interv

interv = 400;
passo = 1;
t=1;
x=0;

while(t<interv)
voltaje=readVoltage(a,'A0');
x = [x,voltaje];
plot(x);
axis([0 interv 0 5.1]);
grid
t=t+passo;
drawnow;
end