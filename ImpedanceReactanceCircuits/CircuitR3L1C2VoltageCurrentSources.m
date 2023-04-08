format long g
clear, clc
ZR1 = 60;
ZR2 = 30;
ZR3 = 45;
ZL1 = j*2*pi*30*19e-3
ZC1 = 1/(j*2*pi*30*6e-6)
ZC2 = 1/(j*2*pi*30*4e-6)
V1s = 10*exp(j*(10)*pi/180)
I1s = 5*exp(j*(200)*pi/180)

V2s = I1s*ZR2
ZR6 = ZL1 + ZR3
ZR7 = (ZC2*ZR6)/(ZC2+ZR6)
ZR4 = (ZR2)+ZR7
I3s = V2s/ZR4 
ZR5 = (ZR4*ZR1)/(ZR4+ZR1)
V3s = I3s*ZR5
V4s = V1s - V3s
ZR8 = (ZC1)+ZR5
IC1 = V4s/ZR8

r = abs(IC1)
a = rad2deg(arg(IC1))
