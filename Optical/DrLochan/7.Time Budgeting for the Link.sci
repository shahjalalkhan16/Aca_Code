//To do time budgeting for the link for given parameters.

// sam pl e v a l u e s
// t s =10 ( r i s e tim e of t h e l e d s o u r c e i n n s )
//IMD=6( i n t e r m o d a l d i s p e r s i o n i n n s /Km)
//L=10( l i n k l e n g t h i n Km)
//PB=2( p u l s e b r o a d e ni n g i n n s /Km)
// td =8( r e s p o n s e tim e of d e t e c t o r i n n s )
//F=1(1−RZ return to zero format , 2−NRZ−non return to zero  format)
clear;
close;
clc;
ts=input("Rise time of the LED source in ns: ");
IMD=input("Intermodal dispersion in ns/Km: ");
L=input("Link length in Km: ");
PB=input("Pulse broadening in ns/Km: ");
td=input("Response time of detector in ns: ");
F=input("Format (1-RZ, 2-NRZ): ");
Tsys=1.1*sqrt(ts^2 + (L*IMD)^2 + td^2 + (L*PB)^2);
if F==1 then
    Bt=0.35*1e3/Tsys;  // Mbps for RZ
else
    Bt=0.7*1e3/Tsys;   // Mbps for NRZ
end
disp(Bt, "Maximum bitrate for the link (Mbps) =");
