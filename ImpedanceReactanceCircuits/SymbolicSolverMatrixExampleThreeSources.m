format long g
clear, clc
ZR1 = 450;
ZR2 = 450;
ZR3 = 300;
ZC1 = 1/(j*2*pi*75*8e-6);
ZC2 = 1/(j*2*pi*75*3e-6);
ZC3 = 1/(j*2*pi*75*4e-6);
ZL1 = j*2*pi*75*470e-3;
ZL2 = j*2*pi*75*570e-3;
I1s = 5*exp(j*(300)*pi/180);

A = [(ZL1+ZL2+ZR1),(-ZL2);(-ZL2),(ZC2+ZR2+ZC3+ZL2)];
B = [(ZR1*(-I1s));(0);];
C = A\B;
I1 = C(1,:)
I2 = C(2,:)
I3 = -I1s

VC1 = ZC1*I3;
VL1 = ZL1*I1;
VC2 = ZC2*I2;
VR2 = ZR2*I2;
VTH = -VC1 - VL1 - VC2 - VR2

r = abs(VTH)
a = rad2deg(arg(VTH))+180

V = 1*exp(j*(0)*pi/180);

A = [(ZL1+ZL2+ZR1),(-ZL2),(-ZR1);(-ZL2),(ZL2+ZC2+ZR2+ZC3),(-ZC3);(-ZR1),(-ZC3),(ZC1+ZR1+ZC3)];
B = [(0);(0);(-V)];
C = A\B;
I1 = C(1,:)
I2 = C(2,:)
I3 = C(3,:)
ZTH = V/(-I3)

%ZR4 = ZC2 + ZR2;
%ZR5 = (ZR4*ZC3)/(ZR4+ZC3);
%ZR6 = (ZR5*ZL2)/(ZR5+ZL2);
%ZR7 = ZR6 + ZL1;
%ZR8 = (ZR7*ZR1)/(ZR7+ZR1);
%ZR9 = ZR8+ZC1
%ZTH = ZR9

% C = 5.09024338247

