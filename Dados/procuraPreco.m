function preco=procuraPreco(data, tamanho, nQuartos)
  
  for i = 1:rows(data)
    
    if(data(i,1) == tamanho && data(i,2) == nQuartos)
      preco = data(i,3);
      i = rows(data);
    endif
    
  endfor
  
end