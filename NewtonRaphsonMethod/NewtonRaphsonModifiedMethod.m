clear, clc

% Metodo de Newton Raphson

FuncionF = @(x) (exp(1)^(-x))-x;
derivativeF = @(x) (-exp(1)^(-x))-1;
x = 0;
tolerancia = 0.00000001
error = 50;
n = 0;
fprintf(' Iteracion    xi      Error\n');
while error > tolerancia
    n = n+1;
    % El floor es para evitar errores de indexing
    x = x - (feval(FuncionF,x)/feval(derivativeF,x));
    error = abs ( feval(FuncionF,x) );
    fprintf(' %i    %0.9f     %0.5f\n', n , x, error);
end

fprintf('Raiz = %0.9f', x);