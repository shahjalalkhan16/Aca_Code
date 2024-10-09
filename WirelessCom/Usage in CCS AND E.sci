clc;
clear all;

Ht = 5; // avg holding time in s
Pc = 450; //peg count for 1hr
Oc = 0; //overflow

U = (Pc - Oc)*Ht/3600;
printf("Usage = %.3f E", U);
Uccs = U*36;
printf("%0.1f CCS = ", Uccs);
Ucs = Uccs*100;
printf("%d call seconds\n ", Ucs);
