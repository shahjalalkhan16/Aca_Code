// Exa 2.9
// To find total traffic in Erlangs and number of MSCs required to handle it.

clc;
clear all;

Tpopu = 200000; // Total population
SP = 0.25; // Subscriber penetration
HT1 = 100; // Holding time for Mobile to Landline and vice versa (seconds)
c1 = 3; // Avg calls/hour for Mobile to Landline and vice versa
HT2 = 80; // Holding time for Mobile to Mobile (seconds)
c2 = 4; // Avg calls/hour for Mobile to Mobile
TMSC = 1800; // Traffic one MSC can hold
TrafDist = 0.9; // Traffic distribution for Mobile to Landline and vice versa

// Solution
aM_L = c1 * HT1 / 3600; // Traffic Generated by Subscriber (M-L and L-M)
aM_M = c2 * HT2 / 3600; // Traffic Generated by Subscriber (M-M)
WlessSub = SP * Tpopu; // Total wireless subscribers
TotalTraffic = WlessSub * TrafDist * aM_L + WlessSub * (1 - TrafDist) * aM_M;

MSCreqd = TotalTraffic / TMSC;

if (MSCreqd - int(MSCreqd) > 0) // For rounding off to next integer if 2.33 to 3
    MSCreqd = MSCreqd + 1;
end

printf('Total Traffic is %.1f Erlangs\n', TotalTraffic);
printf('Number of MSCs required are %d\n', int(MSCreqd));
