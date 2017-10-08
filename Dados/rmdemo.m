%fase 2
close all; clc; clear;

%Fazendo opera��es
load data;
X = ones(rows(data),3);
X(:,2:3) = data(:,1:2);%ones | tamanho | n�Quartos = Independente
Y = data(:,3); % pre�o = dependente
correlacaoTamanhoPreco = correlacao(X(:,2),Y);
correlacaoNQuartosPreco = correlacao(X(:,3),Y);
regressaoMultipla = regmultipla(X,Y);

%Montando o gr�fico
scatter3(data(:,1),data(:,2),data(:,3));
hold on;
plot3(X(:,2),X(:,3),regressaoMultipla);
titulo = ['Coefici�nte de correla��o'
  'Tamanho e pre�o: ' num2str(correlacaoTamanhoPreco) 
  'N� Quartos e pre�o: ' num2str(correlacaoNQuartosPreco)];
title(titulo);
hold off;

