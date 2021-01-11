a=0.02;
b=1.0;
c=3.0;
d=8;
omega=0.3;

f=@(t,x) [x(2); -c*(x(1).^3)-a*x(2)-b*(x(1))+d*cos(omega*t)];
[t,x]=ode23(f,[0 100], [0 0.5]);
figure(1)
plot(x(:,1));
figure(2)
plot(x(:,1),x(:,2));
