%Membros = Daniel Rossato Martini, Matheus Adriano Pereira, Matheus Heiden, Nicollas Pierre Eissmann, Paulo Felipe Piva dos Santos
function dist=eqm(yObservado, yEstimado)
  
  residuo = (yObservado - yEstimado).^2;
  dist = sum(residuo) / size(yObservado,1);
  
end