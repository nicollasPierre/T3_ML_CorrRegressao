%Membros = Daniel Rossato Martini, Matheus Adriano Pereira, Matheus Heiden, Nicollas Pierre Eissmann, Paulo Felipe Piva dos Santos
function dist=calculaYp(beta,x)
  y = beta(1);
  for i = 2:columns(beta)
    y = y+ (beta(i).*x.^(i-1)); 
  endfor
  dist = y;
end