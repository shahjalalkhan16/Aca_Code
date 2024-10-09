//Aim:To calculate the Bending Loss in the optical fiber in the link.
clear;
close;
clc;
n1=input("Enter the core refractive index: ");
n2=input("Enter the cladding refractive index: ");
R=input("Enter the radius of curvature of bend in m: ");
lambda=input("Enter the wavelength in micrometer: ");
c1=1.2; 
c2=0.5;
delta=(n1^2 - n2^2) / (2*n1^2);
Rc=(3*lambda*1e-6) / (4*3.14*2*delta);
alpha=c1*exp(-c2*R);
alphadb=10*log(alpha);
disp(alphadb, "Bending loss in dB=");
disp(Rc, "Critical radius in m=");
