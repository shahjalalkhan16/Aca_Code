//To do power budgeting for the link for given parameters.
// sam pl e v a l u e s
//Ps=13 ( i n p u t power i n dBm)
//Pr=−31( s e n s i t i v i t y of r e c e i v e r )
//L=80( Lin k l e n g t h i n Km)
// Loss =0.35 ( f i b e r l o s s i n dB/Km)
//SL=0.1 ( S p l i c e L o s s i n dB)
//CL=0.5 ( c o u p l i n g l o s s i n dB)
//EL=1.5 ( e x c e s s l o s s )

clear;
close;
clc;
Ps=input("Power from source in dBm: ");
Pr=input("Sensitivity of receiver in dBm: ");
L=input("Link length in Km: ");
Loss=input("Fiber loss in dB/Km: ");
SL=input("Splice Loss in dB/Km: ");
CL=input("Coupling loss in dB: ");
EL=input("Excess loss in dB: ");
Pt=Ps-Pr;
SM=Pt-(2*CL + Loss*L + SL*L);
disp(SM, "System margin in dB=");
