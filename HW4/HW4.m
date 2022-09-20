h = 6.626*(10^-34); % Planck's constant
h_bar = h/(2*pi); % Dirac's constant
m = 1; % particle mass isn't given
L = 1; % L is a known length but not given
C = h_bar/(2*m*(L^2)); % separation constant C
x = linspace(0, L, 101);
psi_x = C.*exp(-(x.^2)/(2*(L^2)));
figure(1)
plot(x,psi_x);
K = ((h_bar^2)/(2*m*(L^2))).*(1-((x./L).^2)).*(psi_x);
figure(2)
plot(x,K);
V = ((h_bar^2).*(x.^2))./(2*m*(L^4));
figure(3)
plot(x,V);