format long g
clear, clc
ZR1 = 50;
ZR2 = 25;
ZC1 = 1/(j*2*pi*45*8e-6)
ZC2 = 1/(j*2*pi*45*6e-6)
ZC3 = 1/(j*2*pi*45*10e-6)
V1s = 10*exp(j*(-45)*pi/180)
I1s = 5*exp(j*(-75)*pi/180)

I2s = V1s/ZR1
ZR3 = (ZR1*ZR2)/(ZR1+ZR2)
V2s = I2s*ZR3
V3s = I1s*ZC3
V4s = V2s + V3s
ZR4 = ZR3 + ZC1 + ZC3

%Divisor de Voltaje
VC2 = V4s * ((ZC2)/(ZR4+ZC2))

r = abs(VC2)
a = rad2deg(angle(VC2))+360