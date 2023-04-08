format long g
clear, clc
ZR1 = 65;
ZR2 = 200;
ZR3 = 120;
ZL1 = j*2*pi*100*85e-3;
ZL2 = j*2*pi*100*260e-3;
ZC1 = 1/(j*2*pi*100*50e-6);
Vs = 150*exp(j*(0)*pi/180);

A = [(ZR1+ZR2+ZL1+ZL2),(-ZR2-ZL2);(-ZR2-ZL2),(ZR2+ZL2+ZR3+ZC1)];
B = [(Vs);(0)];
C = A\B;
I1 = C(1,:);
I2 = C(2,:);
I1m = abs(I1)
I1a = rad2deg(arg(I1)) + 360
I2m = abs(I2)
I2a = (rad2deg(arg(I2))) + 360

disp("");

IR1 = I1;
VR1 = (ZR1)*(IR1);
IR1m = abs(IR1)
IR1a = rad2deg(arg(IR1)) + 360
VR1m = abs(VR1)
VR1a = rad2deg(arg(VR1))
VRMS = VR1m/sqrt(2)
IRMS = IR1m/sqrt(2)

disp("");

P = VRMS*IRMS
