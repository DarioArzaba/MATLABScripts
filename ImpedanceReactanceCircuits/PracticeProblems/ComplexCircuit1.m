format long g
clear, clc
ZR1 = 85;
ZR2 = 70;
ZR3 = 90;
ZL1 = j*2*pi*120*90e-3;
ZL2 = j*2*pi*120*60e-3;
ZC1 = 1/(j*2*pi*120*10e-6);
ZC2 = 1/(j*2*pi*120*35e-6);
Vs = 35*exp(j*(-45)*pi/180);

A = [(ZR2 + ZL1 + ZR3),(-ZR3),(0),(-ZR2);(-ZR3),(ZR3+ZL2+ZC1),(-ZL2),(0);(0),(-ZL2),(ZL2+ZC2),(0);(-ZR2),(0),(0),(ZR1+ZR2)];
det_A = det(A)
M_I1 = [(0),(-ZR3),(0),(-ZR2);(0),(ZR3+ZL2+ZC1),(-ZL2),(0);(Vs),(-ZL2),(ZL2+ZC2),(0);(-Vs),(0),(0),(ZR1+ZR2)];
det_I1 = det(M_I1)
M_I4 = [(ZR2 + ZL1 + ZR3),(-ZR3),(0),(0);(-ZR3),(ZR3+ZL2+ZC1),(-ZL2),(0);(0),(-ZL2),(ZL2+ZC2),(Vs);(-ZR2),(0),(0),(-Vs)];
det_I4 = det(M_I4)

B = [(0);(0);(Vs);((-Vs))];
C = A\B;

I1 = C(1,:)
I2 = C(2,:)
I3 = C(3,:)
I4 = C(4,:)

IR = -(I1 - I4)
r = abs(IR)
a = rad2deg(arg(IR))+180



