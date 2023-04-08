clear all;
clc;
delete(instrfind({'Port'},{'COM30'}));
b=arduino('COM30','uno');

title('TEMPERATURA');
xlabel('Tiempo');
ylabel('Temperatura');
valor=zeros(1,1000);

for i=1:1000
    ylim([0 5]);
    xlim([i-100 i+10]);
    lectura = readVoltage(b,'A0');
    valor(i)=lectura;
    hold on
    plot(i,valor(i),'+r');
    drawnow
end

dlmwrite('Valores_Obtenidos.dat', val, 'delimiter', '\n', 'precision', '%.2f')
delete(b);