format long g
clear, clc
ZR1 = 35;
ZL1 = j*2*pi*60*35e-3
ZC1 = 1/(j*2*pi*60*7e-6)
V1s = 10*exp(j*(80)*pi/180)
V2s = 14*exp(j*(45)*pi/180)
I1s = 7*exp(j*(90)*pi/180)

V3s = I1s*ZR1 %Transformar a voltaje izquierda
V4s = V3s + V1s %Sumar fuentes de voltaje
I2s = V4s/ZR1 %Trasnformar a fuente de corriente izq
I3s = V2s/ZL1 %Transformar a fuente de corriente derecha
I4s = I2s + I3s %Sumar todas las fuentes de corriente

%Paralelo 
ZR2 = (ZL1*ZR1)/(ZL1+ZC1)
%Divisor de corriente
ZRT = (1/((1/ZR1)+(1/ZC1)+(1/ZL1)))
IC1 = I4s * (ZRT/ZC1)
%Usar corriente del elemento para obtener voltaje
VC1 = IC1*ZC1

r = abs(VC1)
a = rad2deg(arg(VC1))