function [t, Y] = integrate_Euler_adaptive(f_handle, t1, t2, y0, eps)?
dt = (b-a)/0.01;          
 t = a; Y(:,1) = y0;
 for i = 1:N            
     t = t + dt;
     Y(:,i+1) = Y(:,i) + dt*feval(fnc,t,Y(:,i));
     R=Y(:, i+1)./
 end    
Y = Y';