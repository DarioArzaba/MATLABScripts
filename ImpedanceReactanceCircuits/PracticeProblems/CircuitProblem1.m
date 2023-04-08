format long g
clear, clc
ZR1 = 300;
ZR2 = 240;
ZL1 = j*2*pi*80*500e-3;
ZC1 = 1/(j*2*pi*80*4e-6);
ZC2 = 1/(j*2*pi*80*1e-6);
Vs = 30*exp(j*(-95)*pi/180);
AR1 = 1/ZR1;
AR2 = 1/ZR2;
AL1 = 1/ZL1;
AC1 = 1/ZC1;
AC2 = 1/ZC2;

A = [(AL1+AC1),(AR1+AC2),(-AC1-AC2);(-AC1),(-AC2),(AR2+AC1+AC2);(1),(-1),(0)];
B = [(0);(0);(Vs)];
C = A\B;

V1 = C(1,:);
V2 = C(2,:);
V3 = C(3,:);

VC2 = V3-V2;
VC1 = V3-V1;
IC1 = VC1/ZC1;
IC2 = VC2/ZC2;

r = abs(IC2)
a = rad2deg(arg(IC2))
