% Metodo Abierto
% Metodo de Secante

% Ejemplo
% F = 'x^3 + 2*x^2 + 10*x - 20'
% X0 = 0
% X1 = 1
% Tol = 0.0001

clear, clc

strFuncionF = input('Ingrese su Funcion F: ');
FuncionF = str2func(['@(x) ',strFuncionF]);
x0 = input('Ingrese el primer valor de X: ');
x1 = input('Ingrese el segundo valor de X: ');
tolerancia = input('Ingrese el valor de la tolerancia: ');
error = 100;
n = 0;
fprintf(' Iteracion    x0         x1         x2         Error\n');
fprintf('      %i    %0.5f    %0.5f    -----       ----\n', n, x0, x1);
while error > tolerancia
    n = n+1;
    xTemp = x1 - (x1-x0)*FuncionF(x1)/(FuncionF(x1)-FuncionF(x0));
    error = abs( FuncionF(xTemp) );
    fprintf('      %i    %0.5f    %0.5f    %0.5f    %0.5f\n', n, x0, x1, xTemp, error);
    x0 = x1;
    x1 = xTemp;
end

fprintf('Raiz = %0.5f', xTemp);