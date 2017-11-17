function [] = analyt()
%analyt takes no arguments and gives no output, it does however produce
%both displacement and velocity graphs using the analytical solution
%of the equation of motion for 100s after the point at which the 
%cord length is 26m and so an extension of 1m and velocity of 0m/s

t=linspace(53.0175, 153.0175, 10000);
x=5.9841*exp(-0.0245902*t).*(exp(0.0245902*t)-cos(1.28013*t)+2.87227*sin(1.28013*t));
figure
plot(t, x);
xlim([53.0175 153.0175]);
ylim([0 11]);
title('x vs t for Analytical Solution')
xlabel('t(s)')
ylabel('x(m)')

v=5.9841*exp(-0.0245902*t).*(0.0245902*exp(0.0245902*t)+3.67689*cos(1.28013*t)+1.28013*sin(1.28013*t))-0.14715*exp(-0.0245902*t).*(exp(0.0245902*t)-cos(1.28013*t)+2.87227*sin(1.28013*t));
figure
plot(t, v);
xlim([53.0175 153.0175]);
ylim([-7 7]);
title('v vs t for Analytical Solution')
xlabel('t(s)')
ylabel('v(m/s)')