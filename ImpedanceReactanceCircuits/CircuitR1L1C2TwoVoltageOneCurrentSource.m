format long g
clear, clc
ZR1 = 35;
ZL1 = j*2*pi*60*35e-3;
ZC1 = 1/(j*2*pi*60*7e-6)
V1s = 10*exp(j*(80)*pi/180)
V2s = 14*exp(j*(45)*pi/180)
I1s = 7*exp(j*(90)*pi/180)

V3s = I1s*ZR1
V4s = V3s + V1s 
I2s = V4s/ZR1
I3s = V2s/ZL1
I4s = I2s + I3s

ZR2 = (ZL1*ZR1)/(ZL1+ZC1)
ZRT = (1/((1/ZR1)+(1/ZC1)+(1/ZL1)))


IC1 = I4s * (ZRT/ZC1)
VC1 = IC1*ZC1

r = abs(VC1)
a = rad2deg(arg(VC1))