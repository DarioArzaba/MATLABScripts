format long g
clear, clc
ZR1 = 550;
ZR2 = 240;
ZR3 = 350;
ZC1 = 1/(j*2*pi*90*6e-6);
ZC2 = 1/(j*2*pi*90*5e-6);
ZC3 = 1/(j*2*pi*90*7e-6);
ZL1 = j*2*pi*90*250e-3;
ZL2 = j*2*pi*90*425e-3;
ZL3 = j*2*pi*90*700e-3;
V1s = 15*exp(j*(200)*pi/180);

A = [(ZL2+ZL3+ZR3+ZC3),(0),(-ZC3);(0),(ZC2+ZR2+ZR1),(-ZR2);(-ZC3),(-ZR2),(ZC3+ZR2)];
B = [(0);(0);(-V1s)];
C = A\B;
I1 = C(1,:)
I2 = C(2,:)
I3 = C(3,:)

VR1 = ZR1*I2;
VC2 = ZC2*I2;
VC1 = 0; %Libre
VL3 = ZL3*I1;
VR3 = ZR3*I1;

VTH = - VR1 - VC2 - VC1 - VL3 - VR3 - V1s
r = abs(VTH)
a = rad2deg(arg(VTH))+180

ZR4 = ZL3+ZR3;
ZR5 = ZC2+ZR1;
ZR6 = (ZR5*ZR2)/(ZR5+ZR2);
ZR7 = (ZR6*ZC3)/(ZR6+ZC3);
ZR8 = ZR7+ZR4;
ZR9 = (ZR8*ZL2)/(ZR8+ZL2);
ZR10 = ZR9+ZC1;
ZTH = ZR10

% 15.11385973292214