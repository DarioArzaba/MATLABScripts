format long g
clear, clc
warning('off', 'all');

syms V1 V2 V3 ZR1 ZL1 ZC1 ZC2 ZC3 IS
eqns = [((V1)/(ZR1)) == ((V2-V1)/(ZL1)) + ((V3-V1)/(ZC1)),
        ((V2-V1)/(ZL1)) + ((V2-V3)/(ZC2)) == IS,
        ((V3)/(ZC3)) + ((V3-V1)/(ZC1)) == ((V2-V3)/(ZC2))];
[A,d] = equationsToMatrix(eqns, [V1 V2 V3]);
B = double(subs(A, {ZR1, ZL1, ZC1, ZC2, ZC3}, {400, j*2*pi*20*370e-3,1/(j*2*pi*20*1e-6), 1/(j*2*pi*20*3e-6), 1/(j*2*pi*20*2.2e-6)}));
f = double(subs(d, {IS}, {5*exp(j*(105)*pi/180)}));
C = B\f;
V1 = C(1,:); V2 = C(2,:); V3 = C(3,:);
VR1 = V1; VL1 = V2-V1; VC1 = V3-V1; VIs = V2; VC3 = V3;

VC2 = V2-V3;
IL1 = VL1/(j*2*pi*20*370e-3);
VC1 = -(V3-V1);
IC1 = -(VC1/(1/(j*2*pi*20*1e-6)));

r = abs(IC1)
a = rad2deg(arg(IC1))