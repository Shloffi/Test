function [der]=der(t,y)
if y(1)<=25;
   der(1,1)=y(2);
   der(2,1)=9.81;
elseif y(1)>25;
    der(1,1)=y(2); %dx/dt = v
    der(2,1)=9.81 - (3/61*y(2)) - (100/61*y(1));
end