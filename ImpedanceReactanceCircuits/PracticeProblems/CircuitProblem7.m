format long g
clear, clc
warning('off', 'all');

%NODES

I1 = 3*exp(j*(0)*pi/180);
I2 = 10*exp(j*(45)*pi/180);
ZC1 = -3i;
ZL1 = 6j;
ZR1 = 4;
ZR2 = 12;

syms I1 I2 ZC1 ZL1 ZR1 ZR2 V1 V2
eqns = [I1+I2 == ((V1)/(ZC1)) + ((V1-V2)/(ZR1)),
        ((V1-V2)/(ZR1)) == I2 + ((V2)/(ZL1)) + ((V2)/(ZR2))]
[A,d] = equationsToMatrix(eqns, [V1 V2])
B = double(subs(A, {ZC1, ZL1, ZR1, ZR2}, {-3i, 6j, 4, 12}))
f = double(subs(d, {I1, I2}, {3*exp(j*(0)*pi/180), 10*exp(j*(45)*pi/180)}))
C = B\f;
V1 = C(1,:); V2 = C(2,:);

r = abs(V1)
a = rad2deg(arg(V1))+360

r = abs(V2)
a = rad2deg(arg(V2))+360