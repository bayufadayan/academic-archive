multi = @(x) 2*x(1)^3 + x(2)^3 + 6*x (1)^2 + 9*x (2)^2 + 8;
[x, fval] = fminsearch (multi, [0,0])