format long g
clear, clc
warning('off', 'all');

# Thevenin VTH

V1S = 25*exp(j*(60)*pi/180);
R1 = 8;
R2 = 6;
L1 = 5i;
L2 = 5i;
C1 = -10i;

R3 = R1+L1
R4 = R2+L2
I1 = V1S/R3
R5 = ((R3*C1)/(R3+C1))
R6 = ((R5*R4)/(R5+R4))

VTH = I1*R6

r = abs(VTH)
a = rad2deg(arg(VTH))

# Resistencia RTH

V2S = 1*exp(j*(0)*pi/180);

A = [(R1+L1+C1),(-C1),(0);(-C1),(C1+R2+L2),(-R2-L2);(0),(-R2-L2),(R2+L2)];
B = [(0);(0);(V2S)];
C = A\B;
I1m = C(1,:)
I2m = C(2,:)
I3m = C(3,:)

I = I3m
r = abs(I)
a = rad2deg(arg(I))

RTH = V2S/I
