clear, clc

% Metodo de Secante

FuncionF = @(x) (exp(1)^(-x))-x;
x0 = 0;
x1 = 1;
tolerancia = 0.00000001;
error = 100;
n = 0;

fprintf(' Iteracion    x0         x1         x2         Error\n');
fprintf('      %i    %0.5f    %0.5f    -----       ----\n', n, x0, x1);
while error > tolerancia
    n = n+1;
    xTemp = x1 - ((x1-x0)*feval(FuncionF,x1))/(feval(FuncionF,x1)-feval(FuncionF,x0));
    error = abs( feval(FuncionF,xTemp) )*100;
    fprintf('      %i    %0.5f    %0.5f    %0.5f    %0.5f\n', n, x0, x1, xTemp, error);
    x0 = x1;
    x1 = xTemp;
end

fprintf('Raiz = %0.9f', xTemp);
