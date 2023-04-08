format long g
clear, clc
ZR1 = 60;
ZR2 = 80;
ZL1 = j*2*pi*120*40e-3;
ZC1 = 1/(j*2*pi*120*10e-6);
Vs = 10*exp(j*(120)*pi/180);
AR1 = 1/ZR1;
AR2 = 1/ZR2;
AL1 = 1/ZL1;
AC1 = 1/ZC1;
AVs = 1/Vs;

a = AC1+AL1+AR1
b = -AL1 
c = -AL1
d = (AR2+AL1) 
g = (AR1*Vs)

A = [(a),(b);(c),(d)];
B = [(g);(0)];
C = A\B;

V1 = Vs;
V2 = C(1,:)
V3 = C(2,:)

VC2 = V3-V2;

r = abs(VC2)
a = rad2deg(angle(VC2))