// Exa 2.4
// To find traffic intensity.

clc;
clear all;

Ht = 120; // Holding time in seconds
CR = 2; // Call rate per hour

// Solution
// Traffic Intensity (Erlangs) = Call rate * Holding time (in hours)
I = CR * Ht / 3600; // Traffic Intensity
printf('Traffic Intensity is %.4f Erlangs = %.1f CCS\n', I, I * 36);
