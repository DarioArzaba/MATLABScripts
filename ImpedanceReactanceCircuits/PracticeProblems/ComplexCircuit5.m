format long g
clear, clc
ZR1 = 80;
ZR2 = 65;
ZR3 = 60;
ZC1 = 1/(j*2*pi*120*40e-6);
ZC2 = 1/(j*2*pi*120*20e-6);
ZL1 = j*2*pi*120*50e-3;
V1s = 15*exp(j*(45)*pi/180);
I1s = 4*exp(j*(120)*pi/180);

ZR4 = (ZL1 + ZR3)
ZR5 = (ZR4*ZR2)/(ZR4+ZR2)
ZR6 = (ZR5+ZC1)
ZR7 = (ZR6*ZR1)/(ZR6+ZR1)
ZR8 = (ZR7 + ZC2)
    
IZR8 = V1s/ZR8
IZR7 = IZR8
VZR7 = IZR7*ZR7
VZR6 = VZR7
IZR6 = VZR6/ZR6
IZR5 = IZR6
VZR5 = IZR5*ZR5
VZR2 = VZR5

r = abs(VZR2)
a = rad2deg(arg(VZR2))

disp("");

A = [(ZC1+ZR2+ZR1),(-ZR2),(-ZR1);(-ZR2),(ZR2+ZR3+ZL1),(0);(-ZR1),(0),(ZR1+ZC2)];
B = [(0);(ZL1*I1s);(ZC2*I1s)];
C = A\B;
I1 = C(1,:)
I2 = C(2,:)
I3 = C(3,:)

IR = (I1-I2)
VR = IR*ZR2

r = abs(VR)
a = rad2deg(arg(VR))+180

disp("");

VR2 = VZR2 - VR
r = abs(VR2)
a = rad2deg(arg(VR2))+360