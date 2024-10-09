//Aim: To plot the characteristic curve for LED.
clear;
close;
clc;
h=6.626e-34;  // Planck's constant
c=3e8;        // Speed of light
e=1.6e-19;    // Charge of electron
lambda=0.87e-6; // Wavelength of light
tr=60e-9;     // Regenerative recombination
tnr=100e-9;   // Non-regenerative recombination
t=tr*tnr/(tr+tnr);
Nint=t/tnr;   // Internal quantum efficiency
for i=1:40
    L(i)=i;
    pint(i)=Nint*i*h*c*1e-3/(e*lambda); // Current in amperes
end
plot2d(L, pint);
xtitle('Characteristics of LED', 'Current (Amperes)', 'Power (Watts)');
