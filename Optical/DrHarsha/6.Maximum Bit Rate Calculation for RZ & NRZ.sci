clear;
clc;
delT1=10*(10^-9)*(10^6);
tao1=0.1*delT1;
Bopt1=1/(2*tao1);
disp(Bopt1, "Maximum possible bit rate for RZ=");
NRZ1=Bopt1/2;
disp(NRZ1, "Maximum possible bit rate for NRZ=");
