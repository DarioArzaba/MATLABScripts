clear,clc

% Metodo de Falsa Posicion
% Algoritmo de 5.10 para resolver 5.5

% RESOLVER 5.4
% Paracaidsita de 68.1kg despues de una caida libre de 10s
% Necesita desacelerar a 40m/s con un coeficiente de arrastre x
% Funcion =  @(x) (((9.8)*(68.1))/(x))*(1-((exp(1))^((-10*x)/(68.1))))-40;

f = @(x) (((9.8)*(68.1))/(x))*(1-((exp(1))^((-10*x)/(68.1))))-40;
low = 12;
high = 16;
tol = 0.0001;

y1 = feval(f, low);
y2 = feval(f, high);
i = 0;
disp('Iter    x1         x0      xr       ea       et');
lastB = 0;
while abs(high-low)>tol
    i = i + 1;
    b=(high*y1-low*y2)/(y1-y2);
    Fb=feval(f, b);
    
    ea = abs(((b - lastB)/(b)))*100;
    et =  abs(((14.7802 - b)/(14.7802)))*100;
    lastB=b;
    fprintf('%2i    %0.3f    %0.3f    %0.4f    %0.3f    %0.3f \n', i-1, low, high, b,ea,et);
    if abs(y2)<tol
        break;
    else    
        if y1*Fb<=0
            high=b;
            y2=Fb;
        else
            low=b;
            y1=Fb;
        end
    end

end
fprintf('\nLa raiz de la funcion es: %.4f',b);
    