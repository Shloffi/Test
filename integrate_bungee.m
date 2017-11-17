function [] = integrate_bungee(f_handle, t1, t2, y0)
N = (t2-t1)./0.01;
Y = eulervector(t1, t2, y0, N, f_handle);

figure
plot(linspace(t1, t2, N+1), Y(:, 1), 'b-');
title('x vs t for Euler Method')
xlabel('t(s)')
ylabel('x(m)')

figure
plot(linspace(t1, t2, N+1), Y(:, 2), 'b--');
title('v vs t for Euler Method')
xlabel('t(s)')
ylabel('v(m/s)')

options = odeset('RelTol', 1e-4, 'AbsTol', 1e-4);
[T, Y] = ode45(f_handle, [t1 t2], y0, options);


figure
plot(T, Y(:, 1), 'r-');
title('x vs t for Runga-Kutta Method')
xlabel('t(s)')
ylabel('x(m)')
xlim([0 153.0175]);
ylim([0 11]);

hold on
t=linspace(53.0175, 153.0175, 10000);
x=5.9841*exp(-0.0245902*t).*(exp(0.0245902*t)-cos(1.28013*t)+2.87227*sin(1.28013*t));
plot(t, x);

hold off

figure
plot(T, Y(:, 2), 'r--');
title('v vs t for Runga-Kutta Method')
xlabel('t(s)')
ylabel('v(m/s)')
xlim([0 153.0175]);
ylim([-7 7]);

hold on

v=5.9841*exp(-0.0245902*t).*(0.0245902*exp(0.0245902*t)+3.67689*cos(1.28013*t)+1.28013*sin(1.28013*t))-0.14715*exp(-0.0245902*t).*(exp(0.0245902*t)-cos(1.28013*t)+2.87227*sin(1.28013*t));
plot(t, v);

hold off

%[((Y(:, 1)>0.5&Y(:, 1)<1.5).*T),((Y(:, 2)>-0.5&Y(:,2)<0.5).*T)]
