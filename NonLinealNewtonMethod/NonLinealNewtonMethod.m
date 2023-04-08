% Metodo Abierto
% Metodo de Newton Raphson No Lineal

clear, clc

format long

syms x y
u = x^2 + x*y - 10;
v = y + 3*x*y^2 - 57;
xo = 1.5;
yo = 3.5;

% Primera iteracion

dUx = diff(u,x); dUy = diff(u,y);
dVx = diff(v,x); dVy = diff(v,y);
rdUx = subs(dUx, {x,y}, {xo,yo}); rdUy = subs(dUy, {x,y}, {xo,yo});
rdVx = subs(dVx, {x,y}, {xo,yo}); rdVy = subs(dVy, {x,y}, {xo,yo});
determinante = (rdUx*rdVy)-(rdUy*rdVx);
eU = subs(u, {x,y}, {xo,yo}); eV = subs(v, {x,y}, {xo,yo});
rx = xo-(((eU*rdVy)-(eV*rdUy))/(determinante));
ry = yo-(((eV*rdUx)-(eU*rdVx))/(determinante));

fprintf('Raiz x = %0.10f\n', rx);
fprintf('Raiz y = %0.10f\n\n', ry);

% Segunda iteracion

xo = rx;
yo = ry;
dUx = diff(u,x); dUy = diff(u,y);
dVx = diff(v,x); dVy = diff(v,y);
rdUx = subs(dUx, {x,y}, {xo,yo}); rdUy = subs(dUy, {x,y}, {xo,yo});
rdVx = subs(dVx, {x,y}, {xo,yo}); rdVy = subs(dVy, {x,y}, {xo,yo});
determinante = (rdUx*rdVy)-(rdUy*rdVx);
eU = subs(u, {x,y}, {xo,yo}); eV = subs(v, {x,y}, {xo,yo});
rx = xo-(((eU*rdVy)-(eV*rdUy))/(determinante));
ry = yo-(((eV*rdUx)-(eU*rdVx))/(determinante));

fprintf('Raiz x = %0.10f\n', rx);
fprintf('Raiz y = %0.10f\n\n', ry);

% Tercera iteracion

xo = rx;
yo = ry;
dUx = diff(u,x); dUy = diff(u,y);
dVx = diff(v,x); dVy = diff(v,y);
rdUx = subs(dUx, {x,y}, {xo,yo}); rdUy = subs(dUy, {x,y}, {xo,yo});
rdVx = subs(dVx, {x,y}, {xo,yo}); rdVy = subs(dVy, {x,y}, {xo,yo});
determinante = (rdUx*rdVy)-(rdUy*rdVx);
eU = subs(u, {x,y}, {xo,yo}); eV = subs(v, {x,y}, {xo,yo});
rx = xo-(((eU*rdVy)-(eV*rdUy))/(determinante));
ry = yo-(((eV*rdUx)-(eU*rdVx))/(determinante));

fprintf('Raiz x = %0.10f\n', rx);
fprintf('Raiz y = %0.10f\n\n', ry);


