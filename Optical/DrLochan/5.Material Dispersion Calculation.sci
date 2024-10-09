// To calculate material dispersion at various wavelength of operation

//Samples values 
//L0 = 1.3
// S0 = 0.095
clear;
close;
clc;
L0=input("Enter the zero dispersion wavelength in um: ");
S0=input("Enter the slope at zero dispersion wavelength: ");
lambda=0.7:0.1:1.7;
MD=(lambda.*S0/4).*(1-(L0./lambda).^4); // Material Dispersion
plot2d(lambda, MD);
xtitle('Material Dispersion at various wavelength', 'Wavelength (meters)', 'Material Dispersion (psnm^−1 km^−1)');
