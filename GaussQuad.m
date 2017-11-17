function [approx, n] = GaussQuad(n, limA, limB, func, acc)
err = Inf;
%while(err>0.01)
%    approx = numeric::quadrature(func, x=limA...limB, GaussLegendre = n):
%    n = n+1;
%    err = approx - acc;
%end
%n = n-1;
DIGITS := 10:
numeric::quadrature(sin(x)/x, x = -1..10, GaussLegendre = 5),
numeric::quadrature(sin(x)/x, x = -1..10, GaussLegendre = 160),
numeric::quadrature(sin(x)/x, x = -1..10, NewtonCotes = 8)