%Membros = Daniel Rossato Martini, Matheus Adriano Pereira, Matheus Heiden, Nicollas Pierre Eissmann, Paulo Felipe Piva dos Santos
%fase 2
close all; clc; clear;


global beta;
%Fazendo opera��es
load data;
X = ones(rows(data),3);
X(:,2:3) = data(:,1:2);%(x(:,1) = ones |x(:,2) =  tamanho |x(:,3) =  n�Quartos) = Independente
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


xDePreco = [1 1650 3];
c = xDePreco*beta;
%Resposta Fase 2, quest�o G na janela de comando
preco = ['Pre�o de uma casa medindo 1650 u.m. e com 3 quartos: ' num2str(xDePreco*beta)]



