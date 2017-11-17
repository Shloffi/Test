function Y = eulervector(a,b,y0,N,fnc)
%Eulervector solves the system of first order differential equations
%   y' = fnc(t,y) by a simple stepping procedure using 
%   the first two terms of a Taylor expansion of the 
%   function y(t).  The function contained in the string 
%   variable fnc must expect SCALAR input for t and 
%   a column VECTOR input for y and return a colmn VECTOR.  
%        The program is not suitable 
%   for realistic solutions of a differential equation.
%   The input values are the range of t's [a<=t<=b], the 
%   initial value of y, [y0] (column vector), the number of steps [N].  A
%   matrix of  computed values are returned in Y.
%   The use is Y = Eulervector(a,b,y0,N,fnc)
%========================================================
 dt = (b-a)/N;          
 t = a; Y(:,1) = y0;
 for i = 1:N            
     t = t + dt;
     Y(:,i+1) = Y(:,i) + dt*feval(fnc,t,Y(:,i));
 end    
Y = Y';