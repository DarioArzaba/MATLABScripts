format long g
clear, clc
ZR1 = 70;
ZR2 = 50;
ZC1 = 1/(j*2*pi*120*20e-6);
ZL1 = j*2*pi*120*60e-3;
Is = 10*exp(j*(90)*pi/180);
Vs = 25*exp(j*(120)*pi/180);

I2 = (-Is);
a = Vs - (ZR1*(-I2));
b = - (ZL1*(-I2));

A = [(ZR1+ZC1),(-ZC1);(-ZC1),(ZC1+ZL1+ZR2)];
det_A = det(A)
M_I1 = [(a),(-ZC1);(b),(ZC1+ZL1+ZR2)];
det_I1 = det(M_I1)
I1 = det_I1/det_A;
M_I3 = [(ZR1+ZC1),(a);(-ZC1),(b)];
det_I3 = det(M_I3)
I3 = det_I3/det_A;


B = [(a);(b)];
C = A\B;
I1 = C(1,:)
I3 = C(2,:)

Vo = ZC1*(I1-I3)

r = abs(Vo)
a = rad2deg(arg(Vo))