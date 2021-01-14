a=0.02;
b=1.0;
c=3.0;
d=8;
omega=0.3;
delta_shift=0.5;

f=@(t,x) [x(2); -c*(x(1).^3)-a*x(2)-b*(x(1))+d*cos(omega*t)];
[t,x]=ode23(f,[0 100], [0 0.5]);

%we perform time renormalization to generate two unsynchronized oscillators
t2=t-2.10;
figure(1)
plot(t,x(:,1))
hold on;
plot(t2,x(:,1))
title('Uncoupled Oscillators')
%plot the phase space structure of the first oscillator

figure(2)
plot(x(:,1),x(:,2));
title('Phase space structure of first oscillator')

