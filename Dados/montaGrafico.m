%Membros = Daniel Rossato Martini, Matheus Adriano Pereira, Matheus Heiden, Nicollas Pierre Eissmann, Paulo Felipe Piva dos Santos
function montaGrafico(x,y)
  
  scatter(x,y);
  coeficienteCorrelacao = correlacao(x,y);
  regressaoLinear = regressao(x,y);
  hold on;
  plot(x,regressaoLinear); 
  %plot(regressaoLinear,coeficienteCorrelacao.*y); 
  title(sprintf("Coeficiênte de correlação:  %s \n ",num2str(coeficienteCorrelacao)));
  hold off;
  
end