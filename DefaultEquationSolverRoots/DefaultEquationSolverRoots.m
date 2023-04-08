clear, clc

% PROBLEMA 7.19

syms u v a
eq1 = u^2 - 2*v^2 -a^2;
eq2 = u + v - 2;
eq3 = a^2 - 2*a - u;
sol = solve(eq1, eq2, eq3);

double(sol.a)
double(sol.u)
double(sol.v)

fprintf('RESULTADOS REALES \n');

fprintf('a1 = -0.4879\n');
fprintf('a2 = -1.6952\n');
fprintf('u1 = +1.2140\n');
fprintf('u2 = +6.2641\n');
fprintf('v1 = +0.7860\n');
fprintf('v2 = -4.2641\n');