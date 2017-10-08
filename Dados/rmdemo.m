close all; clc; clear;

load data;
X = ones(rows(data),3);
X(:,2:3) = data(:,1:2);%ones | tamanho | nºQuartos = Independente
Y = data(:,3); % preço = dependente
correlacaoTamanhoPreco = correlacao(X(:,2),Y);

scatter3(data(:,1),data(:,2),data(:,3));