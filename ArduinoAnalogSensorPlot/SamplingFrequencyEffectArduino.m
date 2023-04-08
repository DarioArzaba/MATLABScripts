clc
close all
clear all

ar=arduino('COM3');
Fs=50;%%Frecuencia de muestreo Hrt
N=1000;%TAMAÑO DEL VECCTOR
y=zeros(N,1);%%VECTOR
t=linspace(0,(N-1)/Fs,N);%%VECTOR DE TIEMPO DIVIDICA ENTRE N PARTES
l1=line('r');
ylim([-.1 5.1])%%establece los límites de los ejes en los ejes actuales a los valores especificados.
xlim([0 (N-1)/Fs])
grid%%rallado de al grafica

tic%%inicia un cronometro
while (1)%%ciclo infinito 
    if(toc>1/Fs)%%imprime el timpo transcurrido desde que inica tic
        tic
        y(1:end-1)=y(2:end);%%coordina una dimension de forma automática
        y(end)=ar.analogRead(0)*5/1023;%%factor de normalizacion
        set(l1,'X',t,'Y',y)
        drawnow%%actualiza las graficas     
    end    
    
end
