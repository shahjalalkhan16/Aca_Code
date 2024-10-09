clear;
clc;
Pin=100*(10^-6); // Input optical power in Watts
Pout=4*(10^-6);  // Output optical power in Watts
alphaT=10*log10(Pin/Pout); // Overall attenuation
disp(alphaT, "Overall attenuation (dB) =");
L1=10*(10^3);    // Length of optical fiber (km)
alpha=alphaT/L1;
disp(alpha, "Signal attenuation per kilometer (dB/km) =");
