clc
clear
close all

a = [0 1 0 0.1]
b = [1 0.1 0.2 -0.1 2]
sys = tf([0 0 1 0.1],[1 0.1 0.2 -0.1 2], 0.1)
rlocus(sys)
[z,p,k] = tf2zp(a,b)
isstable(sys)
C = idtf(a, b, 0.1)
eig(C) 