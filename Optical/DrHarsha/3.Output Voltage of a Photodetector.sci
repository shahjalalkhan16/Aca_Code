clear;
clc;
n = 0.9;  // Quantum efficiency
lambda = 1.3 * (10^-6);  // Wavelength in meters
Pia = -37;  // Incident optical power in dBm
Pi = (10^-3) * (10^(Pia / 10));  // Incident optical power in Watts
disp(Pi, "Incident optical power (Watts) =");
h = 6.625 * (10^-34);  // Planck's constant
c = 3 * (10^8);  // Speed of light
e = 1.6 * (10^-19);  // Electron charge
I = (n * e * lambda * Pi) / (h * c);  // Current
disp(I, "Current (Amp) =");
R1 = 50;  // Load resistance in ohms
V1 = I * R1;  // Voltage across 50 ohms
disp(V1, "Voltage across 50 ohms (Volts) =");
R2 = 1000;  // Load resistance in ohms
V2 = I * R2;  // Voltage across 1000 ohms
disp(V2, "Voltage across 1000 ohms (Volts) =");
