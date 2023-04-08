clear, clc

% PROBLEMA 7.3A

syms x
f = x^3+x^2-3*x-5;
x0 = 2.5;
x1 = 3.5;
x2 = 3;
n = 4;

i = 0;
fprintf('Funcion => f(x) = x^3+x^2-3*x-5\n');
fprintf('Valores iniciales para 4 => x0=%0.1f , x1=%0.1f , x2=%0.1f\n', x0, x1, x2);
fprintf(' Iteracion =  0\n');
fprintf(' Estimacion =  3\n');
fprintf(' Error =  100\n\n');
while i < n
    i = i+1;
    eX0 = subs(f, {x}, {x0});
    eX1 = subs(f, {x}, {x1});
    eX2 = subs(f, {x}, {x2});
    
    eX0 = double(subs(eX0));
    eX1 = double(subs(eX1));
    eX2 = double(subs(eX2));
    
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
    fprintf('Iteracion =  %0.1f\n', i);
    fprintf('Estimacion =  %0.6f\n', x3);
    fprintf('Error =  %0.2f\n\n', Ea);
    x0=x1;
    x1=x2;
    x2=x3;
end
fprintf('----------------------------------\n');
% PROBLEMA 7.3B

f = x^3-0.5*x^2+4*x-3;
x0 = 2.5;
x1 = 3.5;
x2 = 3;
n = 6;

i = 0;
fprintf('Funcion => f(x) = x^3-0.5*x^2+4*x-3\n');
fprintf('Valores iniciales para 4 => x0=%0.1f , x1=%0.1f , x2=%0.1f\n', x0, x1, x2);
fprintf(' Iteracion =  0\n');
fprintf(' Estimacion =  3\n');
fprintf(' Error =  100\n\n');
while i < n
    i = i+1;
    eX0 = subs(f, {x}, {x0});
    eX1 = subs(f, {x}, {x1});
    eX2 = subs(f, {x}, {x2});
    
    eX0 = double(subs(eX0));
    eX1 = double(subs(eX1));
    eX2 = double(subs(eX2));
    
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
    fprintf('Iteracion =  %0.1f\n', i);
    fprintf('Estimacion =  %0.6f\n', x3);
    fprintf('Error =  %0.2f\n\n', Ea);
    x0=x1;
    x1=x2;
    x2=x3;
end
fprintf('----------------------------------\n');
% PROBLEMA 7.4A

f = x^3-x^2+3*x-2;
x0 = 1;
x1 = 2;
x2 = 3;
n = 4;

i = 0;
fprintf('Funcion => f(x) = x^3-x^2+3*x-2\n');
fprintf('Valores iniciales para 4 => x0=%0.1f , x1=%0.1f , x2=%0.1f\n', x0, x1, x2);
fprintf(' Iteracion =  0\n');
fprintf(' Estimacion =  3\n');
fprintf(' Error =  100\n\n');
while i < n
    i = i+1;
    eX0 = subs(f, {x}, {x0});
    eX1 = subs(f, {x}, {x1});
    eX2 = subs(f, {x}, {x2});
    
    eX0 = double(subs(eX0));
    eX1 = double(subs(eX1));
    eX2 = double(subs(eX2));
    
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
    fprintf('Iteracion =  %0.1f\n', i);
    fprintf('Estimacion =  %0.6f\n', x3);
    fprintf('Error =  %0.2f\n\n', Ea);
    x0=x1;
    x1=x2;
    x2=x3;
end
fprintf('----------------------------------\n');
% PROBLEMA 7.4B

x0 = 1;
x1 = 2;
x2 = 3;
eps = 0.0001;
maxit = 20;
for iter=1:maxit
    h0=x1-x0;
    h1=x2-x1;
    d0=(g(x1)-g(x0))/h0;
    d1=(g(x2)-g(x1))/h1;
    a=(d1-d0)/(h1+h0);
    b=a*h1+d1;
    c=g(x2);
    rad=sqrt(b*b-4*a*c);
    if abs(b+rad)>=abs(b-rad)
        den=b+rad;
    else
        den=b-rad;
    end
    dxr=-2*c/den;
    xr=x2+dxr;
    %fprintf("%d %g%+gi %g%+gi %g%+gi %g%+gi %g%+gi %g\n", iter,real(f(x2)),imag(f(x2)), real(a),imag(a),real(b),imag(b),real(c),imag(c), real(xr),imag(xr),abs(dxr)/xr);
    if abs(dxr)<eps*xr 
        break
    end
    fprintf('Iteracion =  %0.1f\n', iter);
    fprintf('Estimacion =  %0.6f + %0.6f i\n', real(xr), imag(xr));
    fprintf('Error =  %0.2f\n\n', abs(dxr)/xr);
    x0=x1;
    x1=x2;
    x2=xr;
end
fprintf('----------------------------------\n');
% PROBLEMA 7.4C

x0 = 1;
x1 = 2;
x2 = 3;
eps = 0.0001;
maxit = 20;
for iter=1:maxit
    h0=x1-x0;
    h1=x2-x1;
    d0=(w(x1)-w(x0))/h0;
    d1=(w(x2)-w(x1))/h1;
    a=(d1-d0)/(h1+h0);
    b=a*h1+d1;
    c=w(x2);
    rad=sqrt(b*b-4*a*c);
    if abs(b+rad)>=abs(b-rad)
        den=b+rad;
    else
        den=b-rad;
    end
    dxr=-2*c/den;
    xr=x2+dxr;
    %fprintf("%d %g%+gi %g%+gi %g%+gi %g%+gi %g%+gi %g\n", iter,real(f(x2)),imag(f(x2)), real(a),imag(a),real(b),imag(b),real(c),imag(c), real(xr),imag(xr),abs(dxr)/xr);
    if abs(dxr)<eps*xr 
        break
    end
    fprintf('Iteracion =  %0.1f\n', iter);
    fprintf('Estimacion =  %0.6f + %0.6f i\n', real(xr), imag(xr));
    fprintf('Error =  %0.2f\n\n', abs(dxr)/xr);
    x0=x1;
    x1=x2;
    x2=xr;
end

x0 = -10;
x1 = -8;
x2 = -5;
eps = 0.0001;
maxit = 20;
for iter=1:maxit
    h0=x1-x0;
    h1=x2-x1;
    d0=(w(x1)-w(x0))/h0;
    d1=(w(x2)-w(x1))/h1;
    a=(d1-d0)/(h1+h0);
    b=a*h1+d1;
    c=w(x2);
    rad=sqrt(b*b-4*a*c);
    if abs(b+rad)>=abs(b-rad)
        den=b+rad;
    else
        den=b-rad;
    end
    dxr=-2*c/den;
    xr=x2+dxr;
    %fprintf("%d %g%+gi %g%+gi %g%+gi %g%+gi %g%+gi %g\n", iter,real(f(x2)),imag(f(x2)), real(a),imag(a),real(b),imag(b),real(c),imag(c), real(xr),imag(xr),abs(dxr)/xr);
    if abs(dxr)<eps*xr 
        break
    end
    fprintf('Iteracion =  %0.1f\n', iter);
    fprintf('Estimacion =  %0.6f + %0.6f i\n', real(xr), imag(xr));
    fprintf('Error =  %0.2f\n\n', abs(dxr)/xr);
    x0=x1;
    x1=x2;
    x2=xr;
end
fprintf('----------------------------------\n');
function y=g(x)
    y = 2*x^4+6*x^2+10;
end

function y=w(x)
    y = x^4-2*x^3+6*x^2-8*x+8;
end



















