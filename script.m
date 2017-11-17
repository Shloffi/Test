%script
a = (log(0.01)-log(0.2))./15;
b = log(0.2);
[approx, n] = simp(1, 0, 15, @(x)exp(a*x+b), 0.951353)
[g, n] = gauss(@(x)exp(a*x+b), 0, 15, 0.951353)
integrate_bungee(@(t, y0)f_bungee(t, y0), 0, 153.0175, [0; 22.15])