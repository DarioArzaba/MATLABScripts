format long g
clear, clc
ZR1 = 95;
ZR2 = 70;
ZC1 = 1/(j*2*pi*120*40e-6);
ZC2 = 1/(j*2*pi*120*35e-6);
ZL1 = j*2*pi*120*60e-3;
Is = 15*exp(j*(-90)*pi/180);

A = [(-ZR2),(ZR2+ZC1+ZL1),(-ZL1);(ZR1+ZR2),(-ZR2-ZL1),(ZL1+ZC2);(-1),(0),(1)];

det_A = det(A)
M_I1 = [(0),(ZR2+ZC1+ZL1),(-ZL1);(0),(-ZR2-ZL1),(ZL1+ZC2);(-15j),(0),(1)];
det_I1 = det(M_I1)
M_I2 =[(-ZR2),(0),(-ZL1);(ZR1+ZR2),(0),(ZL1+ZC2);(-1),(-15j),(1)];
det_I2 = det(M_I2)

B = [(0);(0);(Is)];

C = A\B;

I1 = C(1,:)
I2 = C(2,:)
I3 = C(3,:)

IR = -(I1-I2)
r = abs(IR)
a = rad2deg(arg(IR))
