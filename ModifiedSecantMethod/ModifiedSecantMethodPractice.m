clear, clc

% Metodo de Secante Modificado

f = @(x) (exp(1)^(-x))-x;
d = 0.01;
x0 = 1.0;
tolerancia = 0.00000001;
et = 100;
n = 0;
xd = x0+(d*x0);
fprintf(' Iteracion    x0             x1              x2               et\n');
fprintf('      %i    %0.6f       ----------       ---------         ---------\n', n, x0);
while et > tolerancia
    n = n+1;
    f0 = feval(f,x0);
    fd = feval(f,xd);
    num = d*x0;
    x1 = x0 - ((num*f0)/(fd-f0));
    et = abs( (x1-x0)/x1 )*100;
    fprintf('      %i      %0.6f      %0.6f      %0.6f    %0.6f \n', n, f0, fd, x1, et);
    x0 = x1;
    xd = x0+(d*x0);
end

fprintf('Raiz = %0.8f', x1);