function dist=eqm(yObservado, yEstimado)
  
  residuo = (yObservado - yEstimado).^2;
  dist = sum(residuo) / size(yObservado,1);
  
end