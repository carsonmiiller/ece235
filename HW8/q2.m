L = 1;
x = linspace(0,L,101);
y = linspace(0,L,101);
psi12 = zeros(101,101);
psi21 = zeros(101,101);
for i = 1:101
    for j = 1:101
        psi12(i,j) = (2/L*sin(pi*x(i)/L)*sin(2*pi*y(j)/L))^2;
        psi21(i,j) = (2/L*sin(2*pi*x(i)/L)*sin(pi*y(j)/L))^2;
    end
end
figure(1)
surf(x,y,psi12);
title('Probability Density Function for Quantum Numbers n_x = 1 and n_y = 2');
xlabel('x Position');
ylabel('y Position');
zlabel('Relative Probability');
shading interp
figure(2)
surf(x,y,psi21);
title('Probability Density Function for Quantum Numbers n_x = 2 and n_y = 1');
xlabel('x Position');
ylabel('y Position');
zlabel('Relative Probability');
shading interp