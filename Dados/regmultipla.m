%Membros = Daniel Rossato Martini, Matheus Adriano Pereira, Matheus Heiden, Nicollas Pierre Eissmann, Paulo Felipe Piva dos Santos
function dist=regmultipla(x,y)
  global beta;  
  beta = ((x' * x) ^ -1) * x' * y;
  dist = x*beta;
  
end
  