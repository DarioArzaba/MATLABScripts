format long g
clear, clc
warning('off', 'all');

%SUPERNODOS

V1S = 75*exp(j*(0)*pi/180)
V2S = 100*exp(j*(60)*pi/180)
ZC1 = -1i;
ZL1 = 4i;
ZR1 = 4;
ZR2 = 2;

syms V2S ZC1 ZL1 ZR1 ZR2 V1 V2 V1S
eqns = [ V1-V2 ==V2S ,
        0 == ((V1-V1S)/(ZR1)) + ((V1)/(ZL1)) + ((V2)/(ZC1)) + ((V2)/(ZR2))]
[A,d] = equationsToMatrix(eqns, [V1 V2])
B = double(subs(A, {ZC1, ZL1, ZR1, ZR2}, {-1i, 4i, 4, 2}));
f = double(subs(d, {V2S, ZR1, V1S}, {100*exp(j*(60)*pi/180), 4, 75*exp(j*(0)*pi/180)}));

C = B\f
V1 = C(1,:); V2 = C(2,:); 

r = abs(V1)
a = rad2deg(arg(V1))

r = abs(V2)
a = rad2deg(arg(V2))