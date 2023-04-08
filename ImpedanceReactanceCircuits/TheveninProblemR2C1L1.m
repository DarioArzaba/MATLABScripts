format long g
clear, clc
warning('off', 'all');


V1S = 120*exp(j*(75)*pi/180);
ZR1 = 8;
ZR2 = 4;
ZC1 = -6i;
ZL1 = 12i;

A = [(ZC1+ZR1),(-ZC1-ZR1);(-ZC1-ZR1),(ZC1+ZR1+ZR2+ZL1)];
B = [(-V1S);(0)];
C = A\B;
I1 = C(1,:)
I2 = C(2,:)

VC1 = ZC1*(I2-I1)
VR2 = ZR2*(I2)
VTH = VC1+VR2

r = abs(VTH)
a = rad2deg(arg(VTH))+180


V2S = 1*exp(j*(0)*pi/180);

A = [(ZC1+ZR1),(-ZC1),(-ZR1);(-ZC1),(ZC1+ZR2),(0);(-ZR1),(0),(ZR1+ZL1)];
B = [(0);(V2S);(-V2S)];
C = A\B;
I3 = C(1,:)
I4 = C(2,:)
I5 = C(3,:)

I = (I4-I5)
r = abs(I)
a = rad2deg(arg(I))

RTH = V2S/I
