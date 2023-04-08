% Serie con valor aproximado
clear, clc;
format long
sum = 0;

for i = 1:1:10000
    sum = sum + (1/i^4);
end

disp(sum);
errorRelative = ( abs(sum - ((pi^4)/90)) ) / ((pi^4)/90);
errorPorcent = errorRelative*100;
disp(errorPorcent)
