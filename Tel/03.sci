clc;
clear;
close;

f =8*10^9;
fc = 0.6*f;
c = 3*10^8;
wc = c/fc;
D = (1.841*wc)/(%pi);
w0 =c /f;
wg = w0 /sqrt(1 - (fc/f)^2);
printf("Diameter of the waveguide D = %.3fcm and guide wavelength is Wg = %0.3fcm\n", D, wg);

