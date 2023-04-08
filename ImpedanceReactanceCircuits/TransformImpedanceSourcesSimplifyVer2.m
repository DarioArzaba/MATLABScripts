format long g
clear, clc
warning('off', 'all');

I1 = 2.4*exp(j*(90)*pi/180);
R1 = 4;
R2 = 2;
R3 = 1;
L1 = 1i;
L2 = 5i;
C1 = -2i;
C2 = -2i;

R4 = R1+C1
R5 = R2+L1
V1 = I1*R4
R6 = R4+R5
I2 = V1/R6
R7 = ((R6*L2)/(R6+L2))
V2 = I2*R7
R8 = R7+(R3+C2)
I = V2/R8
r = abs(I)
a = rad2deg(angle(I))