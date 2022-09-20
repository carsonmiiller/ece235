A = 1;
e = 2.718;
sigma = 10e-9;
x = linspace(-5e-8,5e-8,101);
psi = A.*e.^(-(x.^2)./(2*(sigma^2)));
figure(1)
plot(x,psi);
title('Probability Density v. Position');
xlabel('Position (nm)');
ylabel('Probability Density');


Emax = 10; %units of eV
m = 9.11e-31; %units of kg
hbar = 6.58e-16; %units of eV*s
V0 = 2; %units of eV
E = linspace(0,Emax,101);
k1 = sqrt((2*m*E)/hbar^2);
k2 = sqrt((2*m*(E-V0))/hbar^2);
R = linspace(0,Emax,101);
T = linspace(0,Emax,101);
for i = 1:101
    if(E(i) < V0)
        R(i) = 1;
        T(i) = 0;
    else
        R(i) = ((k1(i) - k2(i))/(k1(i) + k2(i)))^2;
        T(i) = 1 - R(i);
    end
end

figure(2)
plot(E,R,E,T);
legend({'Reflection','Transmission'},'Location','east');
title('Reflection and Transmission Coefficients v. Energy');
xlabel('Energy (eV)');
ylabel('Probability');
xlim([0,10]);
ylim([-.1, 1.1]);
grid on;