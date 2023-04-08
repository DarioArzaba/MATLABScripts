format long
clear, clc
ZR1 = 30;
ZR2 = 70;
ZC1 = 1/(j*2*pi*120*5e-6);
ZL1 = j*2*pi*120*70e-3;
ZL2 = j*2*pi*120*35e-3;
Vs = 45*exp(j*90*pi/180);
Is = 25*exp(j*90*pi/180);

b = ZC1+ZL1+ZL2;
c = (-Vs)+((30)*(Is));
d = ZL1*Is;

A = [(ZR1+ZR2+ZL2),(-ZL2);(-ZL2),(b)]
det_A = det(A)
M_I2 = [(c),(-ZL2);(d),(b)]
det_I2 = det(M_I2)
I2 = det_I2/det_A
M_I3 = [(ZR1+ZR2+ZL2),(c);(-ZL2),(d)]
det_I3 = det(M_I3)
I3 = det_I3/det_A

V = (ZL2)*(I3-I2)
V_Radio = abs(V)
V_Angulo = rad2deg(arg(V))
