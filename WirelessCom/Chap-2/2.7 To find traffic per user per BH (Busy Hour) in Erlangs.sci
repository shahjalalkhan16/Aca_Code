// Exa 2.7
// To find traffic per user per BH (Busy Hour) in Erlangs.

clc;
clear all;

minutes = 500; // Number of minutes used per month per user
Twork = 0.9; // Traffic During Work day
TBH = 0.1; // Traffic during busy hour
Days = 20; // Number of workdays in a month

// Solution
// Avg BH usage per subscriber (in minutes) = minutes * Twork * (TBH / Days)
Traffic = minutes * Twork * (TBH / Days);

printf('Traffic per user per BH is %.4f Erlangs\n', Traffic / 60);
