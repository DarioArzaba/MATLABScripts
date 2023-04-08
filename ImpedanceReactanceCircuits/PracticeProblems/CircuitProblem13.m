format long g
clear, clc
ZR1 = 460;
ZL1 = j*2*pi*160*450e-3;
ZL2 = j*2*pi*160*250e-3;
ZC1 = 1/(j*2*pi*160*5.5e-6);
ZC2 = 1/(j*2*pi*160*3.2e-6);
Is = 8*exp(j*(15)*pi/180);
AR1 = 1/ZR1;
AL1 = 1/ZL1;
AL2 = 1/ZL2;
AC1 = 1/ZC1;
AC2 = 1/ZC2;

A = [(AL1+AL2+AC1),(-AL2),(-AC1);(-AL2),(AR1+AC2+AL2),(-AC2);(-AC1),(-AC2),(AC1+AC2)];
B = [(0);(0);(Is)];
C = A\B;

V1 = C(1,:);
V2 = C(2,:);
V3 = C(3,:);

VL1 = V1; #OK
VR1 = V2; #OK
VL2 = V1-V2; #OK

VIs = V3; #OK desface 885.09182 

VC2 = V2-V3; # OK desface -885.09182 (P1)
VC1 = -(V3-V1); #OK desface -885.09182 (P3)
IC1 = -(VC1/ZC1); #OK (P2)
IL2 = -(VL2/ZL2); #OK (P4)

IL1 = VL1/ZL1; #OK
IR1 = VR1/ZR1; #OK
IC2 = VC2/ZC2; #OK

r = abs(VC2)
a = rad2deg(arg(VC2))
