function Y = Eulerscalar(a,b,y0,N,fnc)
%Eulerscalar solves the first order differential equation
%   y' = fnc(x,y) by a simple stepping procedure using 
%   the first two terms of a Taylor expansion of the 
%   function y(x).  The function contained in the string 
%   variable fnc must expect SCALAR input for both x and 
%   y and returns a SCALAR.  The program is not suitable 
%   for realistic solutions of a differential equation.
%   The input values are the range of x's [a<=x<=b], the 
%   initial value of y, [y0], the number of steps [N].  A
%   row vectors of  computed values are returned in Y.
%   The use is Y = Eulerscalar(a,b,y0,N,fnc)
%========================================================
dx = (b-a)/N;		
x = a; Y(1) = y0;
for i = 1:N		
   x = x + dx;		
   Y(i+1) = Y(i) + dx*feval(fnc,x,Y(i));	
end	
Y = Y(:);	
% disp(Y(N))