format long g
clear, clc
ZR1 = 250;
ZR2 = 340;
ZL1 = j*2*pi*160*270e-3;
ZL2 = j*2*pi*160*320e-3;
ZC1 = 1/(j*2*pi*160*5e-6);
ZC2 = 1/(j*2*pi*160*4.4e-6);
ZC3 = 1/(j*2*pi*160*12e-6);
Is = 25*exp(j*(45)*pi/180);
AR1 = 1/ZR1;
AR2 = 1/ZR2;
AL1 = 1/ZL1;
AL2 = 1/ZL2;
AC1 = 1/ZC1;
AC2 = 1/ZC2;
AC3 = 1/ZC3;

A = [(AR1+AL1+AC1),(-AL1),(-AC1),(0);(-AL1),(AR2+AL1+AC2),(-AR2),(-AC2);(-AC1),(-AR2),(AR2+AL2+AC3+AC1),(-AL2);(0),(-AC2),(-AL2),(AL2+AC2)];
B = [(0);(0);(0);(Is)];
C = A\B;

V1 = C(1,:)
V2 = C(2,:)
V3 = C(3,:)
V4 = C(4,:)

VR1 = V1; 
VC3 = V3; 
VIs = V4; 
VR2 = V2-V3; 
VL2 = V3-V4; 
VC2 = V2-V4; 

VC1 = V1-V3
IL2 = VL2/ZL2;

VL1 = V1-V2
IL1 = VL1/ZL1

r = abs(VC1)
a = rad2deg(arg(VC1))
