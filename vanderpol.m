mu=2.3;

f=@(t,x) [x(2); mu*(1-(x(1).^2))*x(2)-x(1)];

[t,x]=ode23(f,[0 100], [0 0.5]);
figure(1)
plot(x(:,1));
figure(2)
plot(x(:,1),x(:,2));
