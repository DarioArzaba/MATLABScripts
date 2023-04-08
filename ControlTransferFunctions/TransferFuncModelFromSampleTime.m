
clc; clear all; close all;
syms n z   
x2_n = (exp(-n))
m=ztrans(x2_n)
h=collect(m)
[ii,jj]=numden(h);
num=sym2poly(ii);
den=sym2poly(jj);
ts=0.1
model=tf(num,den,ts)