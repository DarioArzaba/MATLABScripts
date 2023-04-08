format long g
clear, clc
warning('off', 'all');

I1S = 5*exp(j*(0)*pi/180);
V1S = 20*exp(j*(90)*pi/180);
ZR1 = 8;
ZR2 = 4;
ZC1 = -2i;
ZC2 = -2i;
ZL1 = 10i;

A = [(ZR2+ZC2+ZC1),(-ZC2);(-ZC2),(ZC2+ZL1+ZR1)];
B = [(((ZC1)*(I1S)));(((ZL1)*(I1S)))];
C = A\B;
I2 = C(1,:);
I3 = C(2,:);

I0 = I2-I1S

r = abs(I0)
a = rad2deg(arg(I0))

ZR5 = ZR1+ZL1;
ZR3 = ((ZR5)*(ZC2))/((ZR5)+(ZC2));
ZR4 = ZR3+ZC1+ZR2;

I00 = -(V1S/ZR4)

r = abs(I00)
a = rad2deg(arg(I00))

I = I0+I00;

r = abs(I)
a = rad2deg(arg(I))+360
