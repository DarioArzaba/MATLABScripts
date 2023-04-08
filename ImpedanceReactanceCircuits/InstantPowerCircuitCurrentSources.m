format long g
clear, clc
ZR1 = 100;
ZL1 = j*2*pi*30*500e-3;
ZC1 = 1/(j*2*pi*30*10e-6);
Vs = 100*exp(j*(0)*pi/180);

A = [(-ZC1+ZR1),(-ZR1);(-ZR1),(-ZL1+ZR1)];
B = [(Vs);(0)];
C = A\B;
I1 = C(1,:);
I2 = C(2,:);
I1m = abs(I1)
I1a = rad2deg(arg(I1)) * (-1)
I2m = abs(I2)
I2a = (rad2deg(arg(I2))) * (-1)

disp("");
I2RMS = I2m/sqrt(2)
disp("");

%--------------

IR = (I1-I2);
IRm = abs(IR)
IRa = rad2deg(arg(IR))
VR = (ZR1)*(IR);
VRm = abs(VR)
VRa = rad2deg(arg(VR)) * (-1)

w = 2*pi*30
w2 = 2*w
C = (((VRm)*(IRm))/2)

disp("");
PR = strcat (mat2str(C,5), "(1-cos(", mat2str(w2,6),"))")