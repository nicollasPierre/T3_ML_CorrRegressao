%Fase 3
close all; clc; clear;

%Questão A
load data_preg; 
x = data(:,1);
y = data(:,2);



c = fliplr(polyfit(x,y,1));%Questão C
cY = calculaYp(c,x);%y de C


d = fliplr(polyfit(x,y,2));%Questão D
dY = calculaYp(d,x);%y de D

e = fliplr(polyfit(x,y,3));%Questão E
eY = calculaYp(e,x);%y de E

f = fliplr(polyfit(x,y,8));%Questão F
fY = calculaYp(f,x);%y de F




%Questão G - Resultados na janela de comandos
['Questão G ------']
['EQM de C: ' num2str(eqm(y,cY))]
['EQM de D: ' num2str(eqm(y,dY))]
['EQM de E: ' num2str(eqm(y,eY))]
['EQM de F: ' num2str(eqm(y,fY))] %Linha de regressão mais precisa com EQM de 0.05871

figure(1);
scatter(data(:,1),data(:,2));%Questão B

hold on

plot(x, cY, 'r');%Linha questão C
plot(x, dY, 'g');%Linha questão D
plot(x, eY, 'k');%Linha questão E
plot(x, fY, 'y');%Linha questão F

hold off







%Questão H
nLinhas = rows(x);%53 linhas
index = randperm(nLinhas);
xTeste = x(index(1:5));%5 é aproximadamente 10% do numero de linhas
yTeste = y(index(1:5));
indexTreinamento = sort(index(6:nLinhas));
xTreinamento = x(indexTreinamento);
yTreinamento = y(indexTreinamento);

%Questão I
c = fliplr(polyfit(xTreinamento,yTreinamento,1));%Questão I-C
cYtreinamento = calculaYp(c,xTreinamento);%y de C

d = fliplr(polyfit(xTreinamento,yTreinamento,2));%Questão I-D
dYtreinamento = calculaYp(d,xTreinamento);%y de D

e = fliplr(polyfit(xTreinamento,yTreinamento,3));%Questão I-E
eYtreinamento = calculaYp(e,xTreinamento);%y de E

f = fliplr(polyfit(xTreinamento,yTreinamento,8));%Questão I-F
fYtreinamento = calculaYp(f,xTreinamento);%y de F



%Questão J - Resultados na janela de comandos

cYteste = calculaYp(c,xTeste);
dYteste = calculaYp(d,xTeste);
eYteste = calculaYp(e,xTeste);
fYteste = calculaYp(f,xTeste);


['Questão J ------']
['EQM de C: ' num2str(eqm(yTeste,cYteste))]
['EQM de D: ' num2str(eqm(yTeste,dYteste))]
['EQM de E: ' num2str(eqm(yTeste,eYteste))]
['EQM de F: ' num2str(eqm(yTeste,fYteste))] %Linha de regressão mais precisa com EQM de 0.065565


figure(2);
scatter(data(:,1),data(:,2));%Questão I-B

hold on

plot(xTreinamento, cYtreinamento, 'r');%Linha questão I-C
plot(xTreinamento, dYtreinamento, 'g');%Linha questão I-D
plot(xTreinamento, eYtreinamento, 'k');%Linha questão I-E
plot(xTreinamento, fYtreinamento, 'y');%Linha questão I-F

hold off

























