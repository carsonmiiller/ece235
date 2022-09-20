L = 10e-9; % L is a known length but not given
x = linspace(0, L, 101);
A = 1/(sqrt(2));
psi_x = A*(sqrt(2/L)*sin((2*pi/L).*x) + sqrt(2/L)*sin((3*pi/L).*x));
psi_x_2 = (psi_x).^2;
figure(1)
plot(x,psi_x_2);