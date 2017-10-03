close all; clc; clear;

load data.mat;
data_normal = data;
load data_preg.mat;
data_preg = data;

montaGrafico(data_normal(:,1),data_normal(:,3));

%montaGrafico(data_preg(:,1),data_preg(:,2));



