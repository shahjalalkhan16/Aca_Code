clc;
clear;
close;

vswr = 2;
dB = 30;
Psi= 4.5;
P = (vswr -1)/(vswr + 1);
Pi = Psi*10^(dB/10);
Pr = (Pi*(P^2))/10^3;
printf("Value of Reflected Power is Pr = %1.3fW", Pr);
