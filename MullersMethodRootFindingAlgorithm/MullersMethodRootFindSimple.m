% Metodo Muller para 2 valores Adicionales
% Raices reales = (4, -3, -1)
% Los valores iniciales intersectan un lado de la curva.
% Para aproximar el 4 usamos 4.5, 5.5, 5
% Para aproximar el -3 usamos -2.8, -2.2, -2.5
% Para aproximar el -1 usamos -2, -1.2, -1.6

clear, clc

% CALCULAR PRIMERA

syms x
f = x^3 -13*x - 12;
x0 = 4.5;
x1 = 5.5;
x2 = 5;
n = 4;
i = 0;
fprintf('Funcion => f(x) = x^3 -13*x - 12\n');
fprintf('Valores iniciales para 4 => x0=%0.1f , x1=%0.1f , x2=%0.1f\n', x0, x1, x2);
fprintf(' Iteracion =  \n0\n');
fprintf(' Estimacion =  \n5\n');
fprintf(' Error =  \n100\n\n');
while i < n
    i = i+1;
    eX0 = subs(f, {x}, {x0});
    eX1 = subs(f, {x}, {x1});
    eX2 = subs(f, {x}, {x2});
    h0 = x1-x0;
    h1 = x2-x1;
    D0 = (eX1-eX0)/h0;
    D1 = (eX2-eX1)/h1;
    a = (D1-D0)/(h1+h0);
    b = (a*h1)+D1;
    c = eX2;
    s = 0;
    if b > 0
        d = sqrt(b^2-(4*a*c));
    else
        d = (sqrt(b^2-(4*a*c)))*(-1) ;  
    end
    x3 = x2 + ((2*c*(-1))/(b+d));
    Ea = abs( (x3-x2)/(x3) )*100;
    fprintf('Iteracion =  \n%0.1f\n', i);
    fprintf('Estimacion =  \n%0.6f\n', x3);
    fprintf('Error =  \n%0.2f\n\n', Ea);
    x0=x1;
    x1=x2;
    x2=x3;
end

% CALCULAR SEGUNDA

x0 = -2.8;
x1 = -2.2;
x2 = -2.5;
n = 4;
i = 0;
fprintf(' Iteracion =  \n0\n');
fprintf(' Estimacion =  \n-2.2\n');
fprintf(' Error =  \n100\n\n');
while i < n
    i = i+1;
    eX0 = subs(f, {x}, {x0});
    eX1 = subs(f, {x}, {x1});
    eX2 = subs(f, {x}, {x2});
    h0 = x1-x0;
    h1 = x2-x1;
    D0 = (eX1-eX0)/h0;
    D1 = (eX2-eX1)/h1;
    a = (D1-D0)/(h1+h0);
    b = (a*h1)+D1;
    c = eX2;
    s = 0;
    if b > 0
        d = sqrt(b^2-(4*a*c));
    else
        d = (sqrt(b^2-(4*a*c)))*(-1) ;  
    end
    x3 = x2 + ((2*c*(-1))/(b+d));
    Ea = abs( (x3-x2)/(x3) )*100;
    fprintf('Iteracion =  \n%0.1f\n', i);
    fprintf('Estimacion =  \n%0.6f\n', x3);
    fprintf('Error =  \n%0.2f\n\n', Ea);
    x0=x1;
    x1=x2;
    x2=x3;
end

% CALCULAR TERCERA
x0 = -2;
x1 = -1.2;
x2 = -1.6;
n = 4;
i = 0;
fprintf(' Iteracion =  \n0\n');
fprintf(' Estimacion =  \n-1.2\n');
fprintf(' Error =  \n100\n\n');
while i < n
    i = i+1;
    eX0 = subs(f, {x}, {x0});
    eX1 = subs(f, {x}, {x1});
    eX2 = subs(f, {x}, {x2});
    h0 = x1-x0;
    h1 = x2-x1;
    D0 = (eX1-eX0)/h0;
    D1 = (eX2-eX1)/h1;
    a = (D1-D0)/(h1+h0);
    b = (a*h1)+D1;
    c = eX2;
    s = 0;
    if b > 0
        d = sqrt(b^2-(4*a*c));
    else
        d = (sqrt(b^2-(4*a*c)))*(-1) ;  
    end
    x3 = x2 + ((2*c*(-1))/(b+d));
    Ea = abs( (x3-x2)/(x3) )*100;
    fprintf('Iteracion =  \n%0.1f\n', i);
    fprintf('Estimacion =  \n%0.6f\n', x3);
    fprintf('Error =  \n%0.2f\n\n', Ea);
    x0=x1;
    x1=x2;
    x2=x3;
end

