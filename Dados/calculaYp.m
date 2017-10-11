function dist=calculaYp(beta,x)
  y = beta(1);
  for i = 2:columns(beta)
    y = y+ (beta(i).*x.^(i-1)); 
  endfor
  dist = y;
end