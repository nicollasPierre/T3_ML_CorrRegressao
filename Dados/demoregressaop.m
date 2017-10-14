%Fase 3
close all; clc; clear;

%Quest�o A
load data_preg; 
x = data(:,1);
y = data(:,2);



c = fliplr(polyfit(x,y,1));%Quest�o C
cY = calculaYp(c,x);%y de C


d = fliplr(polyfit(x,y,2));%Quest�o D
dY = calculaYp(d,x);%y de D

e = fliplr(polyfit(x,y,3));%Quest�o E
eY = calculaYp(e,x);%y de E

f = fliplr(polyfit(x,y,8));%Quest�o F
fY = calculaYp(f,x);%y de F




%Quest�o G - Resultados na janela de comandos
['Quest�o G ------']
['EQM de C: ' num2str(eqm(y,cY))]
['EQM de D: ' num2str(eqm(y,dY))]
['EQM de E: ' num2str(eqm(y,eY))]
['EQM de F: ' num2str(eqm(y,fY))] %Linha de regress�o mais precisa com EQM de 0.05871

figure(1);
scatter(data(:,1),data(:,2));%Quest�o B

hold on

plot(x, cY, 'r');%Linha quest�o C
plot(x, dY, 'g');%Linha quest�o D
plot(x, eY, 'k');%Linha quest�o E
plot(x, fY, 'y');%Linha quest�o F

hold off







%Quest�o H
nLinhas = rows(x);%53 linhas
index = randperm(nLinhas);
xTeste = x(index(1:5));%5 � aproximadamente 10% do numero de linhas
yTeste = y(index(1:5));
indexTreinamento = sort(index(6:nLinhas));
xTreinamento = x(indexTreinamento);
yTreinamento = y(indexTreinamento);

%Quest�o I
c = fliplr(polyfit(xTreinamento,yTreinamento,1));%Quest�o I-C
cYtreinamento = calculaYp(c,xTreinamento);%y de C

d = fliplr(polyfit(xTreinamento,yTreinamento,2));%Quest�o I-D
dYtreinamento = calculaYp(d,xTreinamento);%y de D

e = fliplr(polyfit(xTreinamento,yTreinamento,3));%Quest�o I-E
eYtreinamento = calculaYp(e,xTreinamento);%y de E

f = fliplr(polyfit(xTreinamento,yTreinamento,8));%Quest�o I-F
fYtreinamento = calculaYp(f,xTreinamento);%y de F



%Quest�o J - Resultados na janela de comandos

cYteste = calculaYp(c,xTeste);
dYteste = calculaYp(d,xTeste);
eYteste = calculaYp(e,xTeste);
fYteste = calculaYp(f,xTeste);


['Quest�o J ------']
['EQM de C: ' num2str(eqm(yTeste,cYteste))]
['EQM de D: ' num2str(eqm(yTeste,dYteste))]
['EQM de E: ' num2str(eqm(yTeste,eYteste))]
['EQM de F: ' num2str(eqm(yTeste,fYteste))] %Linha de regress�o mais precisa com EQM de 0.065565


figure(2);
scatter(data(:,1),data(:,2));%Quest�o I-B

hold on

plot(xTreinamento, cYtreinamento, 'r');%Linha quest�o I-C
plot(xTreinamento, dYtreinamento, 'g');%Linha quest�o I-D
plot(xTreinamento, eYtreinamento, 'k');%Linha quest�o I-E
plot(xTreinamento, fYtreinamento, 'y');%Linha quest�o I-F

hold off

























