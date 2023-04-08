format long g
clear, clc
ZR1 = 45;
ZR2 = 35;
ZL1 = j*2*pi*120*75e-3;
ZC1 = 1/(j*2*pi*120*10e-6);
Is = 3*exp(j*(0)*pi/180);

I1 = Is;
I2 = (-(ZR1*I1))/(ZR1 + ZC1 + ZR2 + ZL1);
I1m = abs(I1)
I1a = rad2deg(arg(I1))
I2m = abs(I2)
I2a = (rad2deg(arg(I2))) + 180

IR1 = (I1+I2);
IR1m = abs(IR1)
IR1a = rad2deg(arg(IR1)) + 360

VR1 = (ZR1)*(IR1);
VR1m = abs(VR1)
VR1a = rad2deg(arg(VR1)) + 360

VRMS = VR1m/sqrt(2)
IRMS = IR1m/sqrt(2)

disp("");

P = VRMS*IRMS