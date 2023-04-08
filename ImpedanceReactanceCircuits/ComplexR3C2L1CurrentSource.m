format long g
clear, clc
ZR1 = 35
ZR2 = 70
ZR3 = 45
ZC1 = 1/(j*2*pi*120*6e-6)
ZC2 = 1/(j*2*pi*120*35e-6)
ZL1 = j*2*pi*120*60e-3
Is = 35*exp(j*(145)*pi/180)

nZA = ZC1*ZR2
dZA = ZC1+ZR2
ZA = nZA/dZA 
nZB = ZR3*ZL1
dZB = ZR3+ZL1
ZB = nZB/dZB
ZC = ZR1+ZA
ZD = ZB+ZC2
nZE = ZC*ZD
dZE = ZC+ZD
ZE = nZE/dZE

VZE = ZE*Is
IZD = VZE/ZD
Vo = ZC2*IZD

r = abs(Vo)
a = rad2deg(angle(Vo))
