% Dario Abraham Arzaba Diaz A01367752

format long
clear, clc;

% Problema 2 del Examen
fprintf('Problema 2 del Examen \n \n');

fprintf('A) Sen(1/n) \n');
fprintf('B) Sen(1/n^2) \n');
fprintf('C) (Sen(1/n))^2 \n');
fprintf('D) ln(n+1)-ln(n) \n \n');

a = 0; b = 0; c = 0; d = 0;
vel1 = ''; vel2 = ''; vel3 = ''; vel4 = '';

for n = 1:100000
    a = sin(1/n);
    b = sin(1/(n^2));
    c = (sin(1/n))^2;
    d = (log(n+1) - log(n));
    
    if (a < b) && (a < c) && (a < d)
        vel1 = 'A';
        if (b < c) && (b < d)
            vel2 = 'B';
            if (c<d); vel3 = 'C'; vel4 = 'D'; else vel3 = 'D'; vel4 = 'C'; end
        elseif (c < b) && (c < d)
            vel2 = 'C';
            if (b<d); vel3 = 'B'; vel4 = 'D'; else vel3 = 'D'; vel4 = 'B'; end
        else 
            vel2 = 'D';
            if (b<c); vel3 = 'B'; vel4 = 'C'; else vel3 = 'C'; vel4 = 'B'; end
        end
    elseif (b < a) && (b < c) && (b < d)
        vel1 = 'B';
        if (a < c) && (a < d)
            vel2 = 'A';
            if (c<d); vel3 = 'C'; vel4 = 'D'; else vel3 = 'D'; vel4 = 'C'; end
        elseif (c < a) && (c < d)
            vel2 = 'C';
            if (a<d); vel3 = 'A'; vel4 = 'D'; else vel3 = 'D'; vel4 = 'A'; end
        else 
            vel2 = 'D';
            if (a<c); vel3 = 'A'; vel4 = 'C'; else vel3 = 'C'; vel4 = 'A'; end
        end
    elseif (c < a) && (c < b) && (c < d)
        vel1 = 'C';
        if (a < b) && (a < d)
            vel2 = 'A';
            if (b<d); vel3 = 'B'; vel4 = 'D'; else vel3 = 'D'; vel4 = 'B'; end
        elseif (b < a) && (b < d)
            vel2 = 'B';
            if (a<d); vel3 = 'A'; vel4 = 'D'; else vel3 = 'D'; vel4 = 'A'; end
        else 
            vel2 = 'D';
            if (a<b); vel3 = 'A'; vel4 = 'B'; else vel3 = 'B'; vel4 = 'A'; end
        end
    else
        vel1 = 'D';
        if (a < b) && (a < c)
            vel2 = 'A';
            if (b<c); vel3 = 'B'; vel4 = 'C'; else vel3 = 'C'; vel4 = 'B'; end
        elseif (b < a) && (b < c)
            vel2 = 'B';
            if (a<c); vel3 = 'A'; vel4 = 'C'; else vel3 = 'C'; vel4 = 'A'; end
        else 
            vel2 = 'C';
            if (a<b); vel3 = 'A'; vel4 = 'B'; else vel3 = 'B'; vel4 = 'A'; end
        end    
    end
end

fprintf('De Mayor a Menor Velocidad: \n 1) %s \n 2) %s \n 3) %s \n 4) %s', vel1, vel2, vel3, vel4);


