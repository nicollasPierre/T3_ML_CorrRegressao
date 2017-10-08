function dist=regmultipla(x,y)
  
  b = ((x' * x) ^ -1) * x' * y;
  dist = x*b;
  
end
  