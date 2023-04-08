% Estudio del Programa
% El metodo de biseccion encuentra las raices de una funcion continua de
% una variable mediante la divicion de un intervalo dado a la mitad, eligiendo aquel
% subintervalo en donde se encuentra la raiz.

clear, clc

h=input('ingrese la función, para encontrar su raíz    ');
f=inline(h);
a=input('ingrese el valor del límite inferior');
b=input('ingrese el valor del límite superior');
tol=input('ingrese el valor del error que desea');
l = subs (f,a);
u = subs (f,b);
if (sign(1)==sign(1))
    disp('NOPE')
end
c=0;
i=0;
MEP=(b-a)/2;
fprintf('\t i \t\t    a \t\t    b \t\t   c \t\tMEP\n')
while (MEP>tol)
    c=(a+b)/2;
    disp([i,a,b,c,MEP])
    if((f(a)*f(c))<0)
        b=c;
    else
        a=c;
    end
    MEP=(b-a)/2;
    i=i+1;
end
fprintf('Se realizaron %f iteraciones, \ncon una tolerancia de %f\n y la raiz aproximada fue de %f',i,MEP,c)
fprintf('\nSustituyendo %f en la funcion nos da %f',c,f(c))
    




  











