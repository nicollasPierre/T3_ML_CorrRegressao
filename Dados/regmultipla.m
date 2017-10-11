function dist=regmultipla(x,y)
  global beta;  
  beta = ((x' * x) ^ -1) * x' * y;
  dist = x*beta;
  
end
  