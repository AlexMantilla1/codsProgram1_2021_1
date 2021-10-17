clc; clear all; close all;

y = 0:0.01:6;
h = -3*sqrt(3);
k = 3;
x = sqrt( 36 - ((y-k).^2) ) + h;


plot(x,y,'LineWidth',3,'Color',[0.8500, 0.3250, 0.0980])
xlabel("Unidades de x")
ylabel("Unidades de y")
title("Gráfica de un segmento de circunferencia")
axis([-4.5 5.3 -1 7])
grid on