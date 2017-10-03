function dist = regressao(x,y)

% x1 = [10;8;13;9;11;14;6;4;12;7;5]
% y1 = [8.04;6.95;7.58;8.81;8.33;9.96;7.24;4.26;10.84;4.82;5.68]  
  
mediaX = mean(x);
mediaY = mean(y);

b1 = sum( (x-mediaX) .* (y-mediaY) );
b1 = b1/sum( (x-mediaX).^2 );

b0 = mediaY - (b1 .* mediaX);




%Reta de regressão é definida por:
% ÿ   = b0 + b1x, onde o código que faz isso é:
dist = (b0 + (b1 .* x));

  
end