format long g
clear, clc
syms V1 V2 V3 ZR1 ZL1 ZC1 ZC2 ZC3 IS
eqns = [((V1)/(ZR1)) == ((V2-V1)/(ZL1)) + ((V3-V1)/(ZC1)),
        ((V2-V1)/(ZL1)) + ((V2-V3)/(ZC2)) == IS,
        ((V3)/(ZC3)) + ((V3-V1)/(ZC1)) == ((V2-V3)/(ZC2))];
[A,d] = equationsToMatrix(eqns, [V1 V2 V3])