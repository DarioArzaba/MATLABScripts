A = [(60+113.1j),(-113.1j);(-113.1j),(50+37.3j)]
det_A = det(A)
M_I1 = [(10),(-113.1j);(0),(50+37.3j)]
det_I1 = det(M_I1)
I1 = det_I1/det_A
M_I2 = [(60+113.1j),(10);(-113.1j),(0)]
det_I2 = det(M_I2)
I2 = det_I2/det_A

V = (113.1j)*(I1-I2)
V_Radio = abs(V)
V_Angulo = angle(V) %arg in octave

