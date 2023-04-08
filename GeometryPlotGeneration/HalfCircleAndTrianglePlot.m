clear all
clc

%Introducir las dos variables.

h=input('Introduce el valor de h ')
a=input('Introduce el valor de r ')

%Hayar el cateto adyacente.

b=sqrt((h^2)-(a^2))

%Hayar 

art=((a*2)*b)/2
arc=((3.14*(a^2))/2)
plot ([-a 0 a],[0 -b 0])
fill ([-a 0 a],[0 -b 0],'g')
text(0,(-b/2),[num2str(art),'u^2'])
hold on

x=-a:0.1:a
y=sqrt((a.^2)-(x.^2))
fill([x],[y],'b')
text(0,(b/2),[num2str(arc),'u^2'])

title('HELADO')