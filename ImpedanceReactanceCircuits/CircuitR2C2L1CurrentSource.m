format long g
clear, clc
ZR1 = 95;
ZR2 = 70;
ZC1 = 1/(j*2*pi*120*40e-6);
ZC2 = 1/(j*2*pi*120*35e-6);
ZL1 = j*2*pi*120*60e-3;
I1s = 15*exp(j*(-90)*pi/180);

%syms x
%I1 = double(solve( (ZC1+ZL1+ZR2)*(x) == (ZR2*(-I1s))))
I1 = 2.514035187335012 + 14.56608994259494i;
I2 = I1s;

VR1 = I2*ZR1
VC1 = I1*ZC1
VTH = VR1 - VC1

r = abs(VTH)
a = rad2deg(angle(VTH))+360

% C3 = 37.05799981837282

ZR3 = ZR2+ZL1
ZR4 = (ZC1*ZR3)/(ZC1+ZR3)
ZR5 = ZR4+ZR1
ZTH = ZR5



