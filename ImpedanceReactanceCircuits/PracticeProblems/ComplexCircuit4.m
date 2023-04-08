format long g
clear, clc

warning('off', 'all');
syms V1 V2 V3 V4 ZR1 ZR2 ZR3 ZC1 ZC2 ZL1 ZL2 V1s
eqns = [0 == ((V1-V2)/(ZL1)) + ((V1-V4)/(ZR2)),
        ((V1-V2)/(ZL1)) + ((V4-V2)/(ZR3)) == ((V2-V3)/(ZC1)),
        ((V2-V3)/(ZC1)) + ((V4-V3)/(ZL2)) == ((V3)/(ZC2)), 
        V4 == V1s];
[A,d] = equationsToMatrix(eqns, [V1 V2 V3 V4])
B = double(subs(A, {ZR1 ZR2 ZR3 ZC1 ZC2 ZL1 ZL2}, {85 ,70 , 90, 1/(j*2*pi*120*10e-6), 1/(j*2*pi*120*35e-6), j*2*pi*120*90e-3, j*2*pi*120*60e-3}));
f = double(subs(d, {V1s}, {35*exp(j*(-45)*pi/180)}));
C = B\f;
V1 = C(1,:); V2 = C(2,:); V3 = C(3,:); V4 = C(4,:);
I1 = double((V2-V1)/(j*2*pi*120*90e-3))
I2 = double((V3-V2)/(1/(j*2*pi*120*10e-6)))
I3 = double((V3)/(1/(j*2*pi*120*35e-6)))

VTH = V1
r = abs(VTH)
a = rad2deg(arg(VTH))+360

clear

ZR1 = 85;
ZR2 = 70;
ZR3 = 90;
ZC1 = 1/(j*2*pi*120*10e-6);
ZC2 = 1/(j*2*pi*120*35e-6);
ZL1 = j*2*pi*120*90e-3;
ZL2 = j*2*pi*120*60e-3;
V1s = 35*exp(j*(-45)*pi/180);

ZR4 = (ZL2*ZC2)/(ZL2+ZC2);
ZR5 = ZR4 + ZC1;
ZR6 = (ZR3*ZR5)/(ZR3+ZR5);
ZR7 = ZL1+ZR5;
ZR8 = (ZR6*ZR2)/(ZR6+ZR2);
ZTH = ZR8

% L = 11.65919282511211