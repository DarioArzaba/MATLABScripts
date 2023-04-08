% Programa que imprima la serie 0 2 5 7 10 ... 2000
format compact
x = 0;
str = append(num2str(x), ', ');
while x < 2000
    x = x+2;
    str = append(str, num2str(x), ', ');
    x = x+3;
    str = append(str, num2str(x), ', ');
end
str = str(1:end-2);
disp(str)