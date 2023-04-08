% Metodo Abierto
% Metodo de Newton Raphson
% Metodo de convergencia cuadratica.

% Ejemplo
% F = 'x^3 + 2*x^2 + 10*x - 20'
% X = 1
% Tol = 0.0000001

clear, clc

strFuncionF = input('Ingrese su Funcion F: ');
FuncionF = str2func(['@(x) ',strFuncionF]);
syms x
derivativeF = diff(str2sym(strFuncionF), x);

x = input('Ingrese el primer valor de X: ');
tolerancia = input('Ingrese la tolerancia: ');
error = 50;
n = 0;
fprintf(' Iteracion    xi      Error\n');
while error > tolerancia
    fprintf(' %i    %0.5f     %0.5f\n', n , x, error);
    n = n+1;
    % El floor es para evitar errores de indexing
    x = x - FuncionF(x)/eval(derivativeF(floor(x)));
    error = abs (  FuncionF(x)  );
end

fprintf('Raiz = %0.5f', x);