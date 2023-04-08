format long g
clear, clc
ZR1 = 80;
ZR2 = 120;
ZL1 = j*2*pi*60*70e-3;
ZC1 = 1/(j*2*pi*60*15e-6);
Vs = 200*exp(j*(0)*pi/180);

R = ZR1 + ZR2 + ZL1 + ZC1
I = Vs/R
V = I*ZC1

Im = abs(I)
Vm = abs(V)

w = 2*pi*60
w2 = 2*w
C = (((Vm)*(Im))/2)

PR = strcat (mat2str(C,5), "(1-cos(", mat2str(w2,6),"))")