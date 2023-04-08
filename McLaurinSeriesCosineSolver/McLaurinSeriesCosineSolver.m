% Serie para cos, metodo de McLaurin
clear, clc;

%Evaluacion
x = 0.3*pi;
%Cifras
es = 0.5e-08;
cos = 1;
j = 1;
fprintf('j = %2.0f    cos(x)=%0.1f \n', j, cos)
factorial = 1;
for i = 2: 2: 100
    j = j+1;
    factorial = factorial * i * (i-1);
    cosn = cos + ((-1)^(j+1))*((x)^i)/factorial;
    ea = abs((cosn-cos)/cosn);
    if ea < es
        break
    end
    fprintf('j = %2.0f    cos(x) = %0.8f     ea = %0.1e \n', j, cosn, ea)
    cos = cosn;
end