function [der] = f_bungee(t, y)
der = y'*[(-100)/61; (-3)/61] + 9.81;
%der = y'*[(-100)/61; 0] + 9.81;
der = [y(2); der];