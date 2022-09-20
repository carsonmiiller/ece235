z = linspace(10e-9,4*pi,4001);
evenStates = tan(z);
oddStates = -cot(z);
z0_1 = 1;
z0_2 = 4;
z0_3 = 7;
z1 = real(sqrt(((z0_1./z).^2)-1));
z2 = real(sqrt(((z0_2./z).^2)-1));
z3 = real(sqrt(((z0_3./z).^2)-1));
figure(1)
plot(z,evenStates,z,oddStates,z,z1,z,z2,z,z3);
axis([0 4*pi 0 10]);
xlabel('z');
ylabel('Arbitrary Energy');
legend('tan(z)','-cot(z)','z_0= 1','z_0= 4','z_0= 7');

% % % % % % % % % % % % % % % % % 
Energy = linspace(0,10,1001);
L10 = 10;
angle10 = L10*sqrt(1+Energy);
T10 = 1./(1+(sin(angle10).^2)./(4*Energy.*(Energy+1)));
L01 = 0.1;
angle01 = L01*sqrt(1+Energy);
T01 = 1./(1+(sin(angle01).^2)./(4*Energy.*(Energy+1)));
L1 = 1;
angle1 = L1*sqrt(1+Energy);
T1 = 1./(1+(sin(angle1).^2)./(4*Energy.*(Energy+1)));
figure(2)
plot(Energy,T01,Energy,T1,Energy,T10)
xlim([-1 10]);
ylim([0 1.1]);
xlabel('E/V_0');
ylabel('Transmission');
legend({'L = 0.1','L = 1','L = 10'},'location','southeast');