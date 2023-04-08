clc
clear
close all

tiledlayout(2,1)

nexttile
x1 = [5001; 2310; 600; 42; 1.3];
y1 = [2.33; 2.31; 2.2; 2.11; 2.16];
f1=fit(x1,y1,'poly2');
plot(f1);
axis([0 7000 2 2.5]);
hold on
scatter(x1,y1, 'MarkerFaceColor','b', 'MarkerEdgeColor', 'b');
axis([0 7000 2 2.5]);
hold off

nexttile
x2 = [5001; 2100; 610; 40; 1.9;];
y2 = [1.59; 1.5; 1.9; 1.9; 2.48;];
f2=fit(x2,y2,'poly2');
plot(f2);
hold on
scatter(x2,y2, 'MarkerFaceColor','b', 'MarkerEdgeColor', 'b');
hold off
