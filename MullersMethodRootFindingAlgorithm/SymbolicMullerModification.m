% PROBLEMA DEL LIBRO 7.3 B

clear, clc


syms x
f = x^3 - 0.5*x^2 + 4*x - 3;
x0 = 1;
x1 = 3;
x2 = 2;
n = 3;

i = 0;
fprintf('Funcion => f(x) = x^3 - (0.5*(x^2)) + (4*x) - 3;\n');
fprintf('Valores iniciales para 4 => x0=%0.1f , x1=%0.1f , x2=%0.1f\n', x0, x1, x2);
fprintf(' Iteracion =  \n0\n');
fprintf(' Estimacion =  \n4\n');
fprintf(' Error =  \n100\n\n');
while i < n
    i = i+1;
    eX0 = subs(f, {x}, {x0});
    eX1 = subs(f, {x}, {x1});
    eX2 = subs(f, {x}, {x2});
        
    %eX0 = double(subs(eX0));
    %eX1 = double(subs(eX1));
    %eX2 = double(subs(eX2));
    
    h0 = x1-x0;
    h1 = x2-x1;
    D0 = (eX1-eX0)/h0;
    D1 = (eX2-eX1)/h1;
    a = (D1-D0)/(h1+h0);
    b = (a*h1)+D1;
    c = eX2;
    s = 0;
    notSymD = double(subs(b));
    if notSymD > 0
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