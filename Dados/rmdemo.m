%fase 2
close all; clc; clear;


global beta;
%Fazendo operações
load data;
X = ones(rows(data),3);
X(:,2:3) = data(:,1:2);%ones | tamanho | nºQuartos = Independente
Y = data(:,3); % preço = dependente
correlacaoTamanhoPreco = correlacao(X(:,2),Y);
correlacaoNQuartosPreco = correlacao(X(:,3),Y);
regressaoMultipla = regmultipla(X,Y);

%Montando o gráfico
scatter3(data(:,1),data(:,2),data(:,3));
hold on;
plot3(X(:,2),X(:,3),regressaoMultipla);
titulo = ['Coeficiênte de correlação'
  'Tamanho e preço: ' num2str(correlacaoTamanhoPreco) 
  'Nº Quartos e preço: ' num2str(correlacaoNQuartosPreco)];
title(titulo);
hold off;


xDePreco = [1 1650 3];
c = xDePreco*beta;
preco = ['Preço de uma casa medindo 1650 u.m. e com 3 quartos: ' num2str(xDePreco*beta)]



