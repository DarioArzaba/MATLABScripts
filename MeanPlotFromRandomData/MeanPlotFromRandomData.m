clear, clc
n = 50;
r = rand(n,1);
m = mean(r);
plot(r)
hold on
plot([0,n],[m,m]) 
title('Media de Datos al Azar')