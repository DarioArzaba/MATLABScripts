format long
clear, clc
ZR1 = 70;
ZR2 = 60;
ZC1 = 1/(j*2*pi*60*5e-6);
ZL1 = j*2*pi*60*40e-3;
Vs = 8*exp(j*15*pi/180);
Is = 2*exp(j*45*pi/180);

b = ZC1+ZL1
c = 0
d = -Vs - ((60)*(-(-Is)))

A = [(ZR1+b),(-ZL1);(-ZL1),(ZR2+ZL1)]
det_A = det(A)
M_I1 = [(c),(-ZL1);(d),(ZR2+ZL1)];
det_I1 = det(M_I1)
I1 = det_I1/det_A
M_I2 = [(ZR1+b),(c);(-ZL1),(d)]
det_I2 = det(M_I2)
I2 = det_I2/det_A

V = (ZL1)*(I1-I2)
V_Radio = abs(V)
V_Angulo = rad2deg(angle(V))
