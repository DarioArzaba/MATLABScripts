clc
clear
close all

x1 = [5020; 2010; 620; 40; 1.4];
y1 = [2.31; 2.1; 2.65; 2.63; 2.34];
f1=fit(x1,y1,'poly2');
plot(f1);
hold on
scatter(x1,y1, 'MarkerFaceColor','b', 'MarkerEdgeColor', 'b');
title('100 Ohms')


