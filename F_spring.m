function rhs=F_spring(t,y)
% f_spring(t,y) gives the right side of matrix equation for mass, spring
% dumper system from Nakamura, Example 10.7, p.337
% M is a mass, B is a damping coefficient, k is a spring constant
% g is the gravity acceleration
M=10;B=50;k=200;
rhs=[y(2); -B/M*abs(y(2))*y(2)-k/M*y(1)];
