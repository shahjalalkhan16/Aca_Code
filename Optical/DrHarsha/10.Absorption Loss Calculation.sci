clear;
clc;
l=3.5*(10^-5);  // Length of optical fiber in interference sphere
Vsc=5.1*(10^-9); // Voltage level for scattered light
Vop=165*(10^-6); // Voltage level for unscattered light
alpha_sc=(4.343/l)*(Vsc/Vop);
disp(alpha_sc, "Scattering loss (dB/km) =");
L1=1;   // Length of original optical fiber
L2=0.002; // Length of cutback optical fiber
V2=22;  // Voltage level for cutback optical fiber
V1=5.20; // Voltage level for original optical fiber
alpha_T=(1/(L1-L2))*(10*log10(V2/V1));
disp(alpha_T, "Total attenuation (dB/km) =");
AL=alpha_T-alpha_sc;  // Absorption loss
disp(AL, "Absorption loss (dB/km) =");
