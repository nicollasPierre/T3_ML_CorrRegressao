%Fase 3
close all; clc; clear;


load data_preg; 
x = data(:,1);
y = data(:,2);
c = fliplr(polyfit(x,y,1));%Quest�o C
cY = calculaYp(c,x);%Y de C

scatter(x,y);%Quest�o B
hold on
plot(x, cY, 'r');

hold off