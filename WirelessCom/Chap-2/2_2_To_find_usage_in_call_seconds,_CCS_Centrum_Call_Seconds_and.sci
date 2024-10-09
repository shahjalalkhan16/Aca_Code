// Exa 2.2
// To find usage in call-seconds, CCS (Centrum Call Seconds) and Erlangs.

clc;
clear all;

Ht = 5; // Average holding time in seconds
PC = 450; // Peg count for one hour period
OC = 0; // Overflow count

// Solution
// Usage (Erlangs) = (Peg count - Overflow count) * Average holding time (in hours)
U = (PC - OC) * (5 / 3600);

printf('Usage = %.3f Erlangs\n', U);

// In CCS
Uccs = U * 36; // Usage in CCS
printf('%.1f CCS\n', Uccs);

Ucs = Uccs * 100; // Usage in call-seconds
printf('%d call-seconds\n', Ucs);
