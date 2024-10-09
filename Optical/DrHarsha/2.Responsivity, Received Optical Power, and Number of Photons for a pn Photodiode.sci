clear;
clc;
n = 50 / 100;  // Quantum efficiency (50%)
lambda = 0.9 * (10^-6);  // Wavelength in meters
e = 1.6 * (10^-19);  // Electron charge
h = 6.6 * (10^-34);  // Planck's constant
c = 3 * (10^8);  // Speed of light
R = (n * e * lambda) / (h * c);  // Responsivity
disp(R, "Responsivity (A/W) =");
Ip = 10^-6;  // Mean photocurrent in Amperes
P0 = Ip / R;  // Received optical power
disp(P0, "Received optical power (Watts) =");
E = (h * c) / lambda;  // Energy of a photon
disp(E, "Energy of a photon (Watts) =");
NOP = P0 / E;  // Number of received photons
disp(NOP, "Number of photons per second =");
