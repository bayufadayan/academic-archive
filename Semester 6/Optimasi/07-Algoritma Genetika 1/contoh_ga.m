% --- Buka Octave, kemudian pada Command Window, ketikan
% --- “pkg install –forge ga”
% --- Kemudian ketikan:
% --- “pkg load ga”

% --- SATU VARIABEL
f = @(x) x.^3 - 12 * x .^ 2;
x = linspace(-20,20);

figure(1);
plot(x, f(x));
grid on;

[x, fval] = ga(f, 1);

printf('x = %d\n', x);
printf('fval = %d\n', fval);
printf('\n\n');

% --- DUA VARIABEL
f_plot = @(x, y) x.^2 + y.^2 + 2.*x + 4.*y + 6;
[X, Y] = meshgrid(-10:10);

figure(2);
surfc(X, Y, f(X,Y));
grid on;

f_ga = @(x) x(1).^2 + x(2).^2 + 2.*x(1) + 4.*x(2) + 6;
[x, fval] = ga(f_ga, 2);

printf('x = %d\n', x);
printf('fval = %d\n', fval);