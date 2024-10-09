clear;
close;
clc;
n1=input("Enter the core refractive index: ");
n2=input("Enter the cladding refractive index: ");
delta=(n1^2 - n2^2) / (2*n1^2);
NA=n1*sqrt(2*delta);
accept=asind(NA);
disp(NA, "Numerical aperture=");
disp(accept, "Acceptance angle=");

critical= asind(n2/n1);
disp(critical, "Critical angle");
