format long g
clear, clc
warning('off', 'all');

%NODES

V1 = 12*exp(j*(0)*pi/180);
I1 = 0.004*exp(j*(0)*pi/180);
ZC1 = -5000i;
ZL1 = 10000j;
ZR1 = 500;
ZR2 = 2000;

syms V1 V2 I1 ZC1 ZL1 ZR1 ZR2

eqns = [((V1-12)/(ZR1)) + ((V1)/(ZL1)) + ((V1-V2)/(ZR2)) == 0 ,
        ((V2-V1)/(ZR2)) + ((V2)/(ZC1)) + I1 == 0]

[A,d] = equationsToMatrix(eqns, [V1 V2])

B = double(subs(A, {ZC1, ZL1, ZR1, ZR2}, {-5000i, 10000j, 500, 2000}));
f = double(subs(d, {ZR1, I1}, {500, 0.004}));
C = B\f;
V1 = C(1,:); V2 = C(2,:);

r = abs(V1)
a = rad2deg(arg(V1))

r = abs(V2)
a = rad2deg(arg(V2))+360