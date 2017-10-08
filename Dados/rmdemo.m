%fase 2
close all; clc; clear;

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

