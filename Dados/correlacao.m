function dist=correlacao(x,y)

% x1 = [10;8;13;9;11;14;6;4;12;7;5]
% y1 = [8.04;6.95;7.58;8.81;8.33;9.96;7.24;4.26;10.84;4.82;5.68]

mediaX = mean(x);
mediaY = mean(y);

dist = (sum((x-mediaX) .* (y-mediaY)));
dist = dist/sqrt(sum((x-mediaX).^2) .* sum((y-mediaY).^2));

end