clear, clc

% Metodo de Biseccion
% Algoritmo de 5.10 para resolver 5.3 y 5.4

% RESOLVER 5.3
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
if y1 * y2 > 0
   disp('Error no hay un cambio en los signos del intervalo');
   m = 'Error'
   return
end 
disp('Iter    low        high          x0');
while (abs(high - low) >= tol)
    i = i + 1;
    m = (high + low)/2;
    y3 = feval(f, m);
    if y3 == 0
        fprintf('Raiz en x = %f \n\n', m);
        return
    end
    fprintf('%2i \t %f \t %f \t %f \n', i-1, low, high, m);   

    % Update the limits
    if y1 * y3 > 0
        low = m;
        y1 = y3;
    else
        high = m;
    end
end 
w = feval(f, m);
fprintf(' RESULTADO = %f \n', m); 



