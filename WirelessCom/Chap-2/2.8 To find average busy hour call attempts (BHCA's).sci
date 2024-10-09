// Exa 2.8
// To find average busy hour call attempts (BHCA's).

clc;
clear all;

minutes = 500; // Number of minutes used per month per user
Twork = 0.9; // Traffic During Work day
TBH = 0.1; // Traffic during busy hour
Days = 20; // Number of workdays in a month
MeanHT = 100; // Mean holding time (in seconds)

// Solution
// Avg BH usage per subscriber (in minutes) = minutes * Twork * (TBH / Days);
Traffic = minutes * Twork * (TBH / Days);

// BHCAs = traffic (in Erlangs) * 3600 / (mean holding time)
BHCAs = (Traffic / 60) * (3600 / MeanHT);

printf('Average Busy Hour call attempts are %.2f\n', BHCAs);
