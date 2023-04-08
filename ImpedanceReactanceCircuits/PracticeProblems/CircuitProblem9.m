format long g
clear, clc
warning('off', 'all');

syms V1 V2 V3 ZR1 ZL1 ZL2 ZC1 ZC2 IS
eqns = [((V1)/(ZL1)) + ((V1-V2)/(ZL2)) + ((V1-V3)/(ZC1))== 0,
        ((V2)/(ZR1)) + ((V2-V3)/(ZC2)) == ((V1-V2)/(ZL2)),
        0 == ((V1-V3)/(ZC1)) + ((V2-V3)/(ZC2)) + (IS)]
[A,d] = equationsToMatrix(eqns, [V1 V2 V3])
B = double(subs(A, {ZR1, ZL1, ZL2, ZC1, ZC2}, {460, j*2*pi*160*450e-3, j*2*pi*160*250e-3, 1/(j*2*pi*160*5.5e-6), 1/(j*2*pi*160*3.2e-6)}))
f = double(subs(d, {IS}, {8*exp(j*(15)*pi/180)}))
C = B\f
V1 = C(1,:); V2 = C(2,:); V3 = C(3,:);

VL2 = V1-V2
VC2 = V2-V3;

r = abs(VC2)
a = rad2deg(arg(VC2))