format long g
clear, clc
ZR1 = 60;
ZR2 = 30;
ZR3 = 45;
ZL1 = j*2*pi*60*19e-3;
ZC1 = 1/(j*2*pi*60*6e-6);
ZC2 = 1/(j*2*pi*60*4e-6);
V1s = 10*exp(j*(10)*pi/180);
I1s = 5*exp(j*(200)*pi/180);

V2s = I1s*ZR2
ZR4 = (ZR2)+((ZC2*(ZL1 + ZR3))/(ZC2+(ZL1 + ZR3)))
disp("");

%syms x
%V2 = double(solve( (x/ZR1) == ((V1s-x)/(ZC1))+((V2s-x)/(ZR4)) ))
V2 = -64.3334425530532 - 15.17908550918651i
IC1 = ((V1s-V2)/(ZC1))
r = abs(IC1)
a = rad2deg(arg(IC1))
disp("");

I2s = V1s/ZC1
I3s = V2s/ZR4
I4s = I2s + I3s
ZRT = (1/((1/ZC1)+(1/ZR1)+(1/ZR4)))
I2 = I4s * (ZRT/ZC1)
V2 = I2*ZC1
IC1 = ((V1s-V2)/(ZC1))

r = abs(IC1)/2
a = rad2deg(arg(IC1))
