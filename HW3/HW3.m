close all;
clear all;
clc;

lambda = 600e-9;
l = 1;
d = 8e-6;
z = linspace(-5,5,1001);
r = sqrt(l^2+z.^2);

r1 = sqrt(l^2 + (z - d/2).^2);
r2 = sqrt(l^2 + (z + d/2).^2);

intensity = ((1./r).*cos(pi*(r1-r2)./lambda)).^2;

plot(z,intensity)
xlabel("Z - position (m)")
xticks([-5 -4 -3 -2 -1 0 1 2 3 4 5])
xticklabels({'-5','-4','-3','-2','-1','0','1','2','3','4','5'})
ylabel("Normalized Intensity")