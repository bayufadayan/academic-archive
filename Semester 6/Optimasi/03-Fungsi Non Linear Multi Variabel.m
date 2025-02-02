f = @(x,y) 2*x^3 + y^3 + 6*x^2 + 9*y^2 + 8; 
[x,y] = meshgrid(-0:6);
figure (1)
surfc (x, y, f(x,y));