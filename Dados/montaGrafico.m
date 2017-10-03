function montaGrafico(x,y)
  
    scatter(x,y);
  coeficienteCorrelacao = correlacao(x,y);
  regressaoLinear = regressao(x,y);
  hold on;
  plot(coeficienteCorrelacao.*x,regressaoLinear); 
  %plot(regressaoLinear,coeficienteCorrelacao.*y); 
  title(sprintf("Coeficiênte de correlação:  %s \n Regressão Linear: %d",num2str(coeficienteCorrelacao),num2str(regressaoLinear)));
  hold off;
  
end