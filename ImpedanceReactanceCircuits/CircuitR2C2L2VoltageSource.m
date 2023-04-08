format long g
clear, clc
ZR1 = 95
ZR2 = 70
ZC1 = 1/(j*2*pi*120*6.5e-6)
ZC2 = 1/(j*2*pi*120*10e-6)
ZL1 = j*2*pi*120*98e-3
ZL2 = j*2*pi*120*60e-3
Vs = 15*exp(j*(-90)*pi/180)

ZA = ZR1 + ZC1
nZB = ZA*ZL1
dZB = ZA+ZL1
ZB = nZB/dZB
ZC = ZB + ZR2
nZD = ZC*ZC2
dZD = ZC+ZC2
ZD = nZD/dZD
ZE = ZD + ZL2

IZE = Vs/ZE
VZD = ZD*IZE
IZC = VZD/ZC
VZB = ZB*IZC
IZA = VZB/ZA
Vo = ZC1*IZA

r = abs(Vo)
a = rad2deg(angle(Vo))

