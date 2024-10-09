// To calculate fiber parameters(dimensions, refractive index difference) for single mode operation.
clear;
close;
clc;
lambda=0.8e-6:0.1e-6:1.7e-6;
ric=input("Refractive index of core: ");
V=input("V number for single mode transmission: ");
delta=input("Refractive index difference: ");
for i=1:10
    a(i)=V*lambda(i)/(2*3.14*ric*sqrt(2*delta));
end
plot2d(lambda, a);
xtitle('Core diameter vs wavelength of transmission', 'Wavelength (Lambda) (m)', 'Core diameter (m)');
