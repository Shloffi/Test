function rhs=f_skydiver(t,v)
% f_skydiver(x,y) gives the right side of equation v'(t)=-C/M v^2 +g
% M is a mass of the skydiver, C is the aerodynamical drag coefficient,
% g is the gravity acceleration
C=0.27;M=70;g=9.81;
rhs=-C/M*v^2 +g;