format long g
warning('off', 'all');


V1S = 8*exp(j*(20)*pi/180);
V2S = 10*exp(j*(0)*pi/180);
R1 = 1;
R2 = 4;
L1 = 2i;
L2 = 6i;
C1 = -8i;

R3 = R1+L1
R4 = C1+R2
I1 = V1S/R3
I2 = V2S/R4
R5 = ((R3*R4)/(R3+R4))
I3 = I1+I2
V = I3*R5
R6 = R5+L2
I = V/R6

r = abs(I)
a = rad2deg(angle(I))+360