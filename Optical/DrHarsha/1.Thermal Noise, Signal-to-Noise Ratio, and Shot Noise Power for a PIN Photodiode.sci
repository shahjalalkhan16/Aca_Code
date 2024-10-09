clear;
clc;
T=40 + 273;  // Temperature in Kelvin
delF=50 * (10^3);  // Bandwidth in Hz
k=1.38 * (10^-23);  // Boltzmann constant
e=1.6 * (10^-19);  // Electron charge
RL=2000;  // Load resistance in ohms
iS = (2 * k * T) / (e * RL);  // Signal photocurrent
disp(iS, "Signal photocurrent (Amp) =");
PNT = 4 * k * T * delF;  // Thermal noise
disp(PNT, "Thermal noise power (Watts) =");
S_by_N = iS / (4 * e * delF);  // Signal-to-noise ratio
disp(S_by_N, "Signal-to-noise ratio (S/N) =");
PNS = 2 * e * iS * delF * RL;  // Shot noise power
disp(PNS, "Shot noise power (Watts) =");
