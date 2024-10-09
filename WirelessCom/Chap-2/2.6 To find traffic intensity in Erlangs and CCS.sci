// Exa 2.6
// To find traffic intensity in Erlangs and CCS during eight-hour period and busy hour (4:00 PM to 5:00 PM).
// Refer-Table 2.2 (page no 28): Traffic on customer line between 9:00 AM and 5:00 PM

clc;
clear all;

time = 8; // in hours
calls = 11; // number of calls in 8-hour period

// Solution
CR = calls / time; // call arrival rate in calls per hour
tavg = (3 + 10 + 7 + 10 + 5 + 5 + 1 + 5 + 15 + 34 + 5) / 11; // average call holding time in minutes per call
I = CR * (tavg / 60); // traffic intensity in Erlangs
printf('Traffic Intensity during eight-hour period is %.3f Erlangs = %.1f CCS\n', I, I * 36);

// For Busy Hour i.e., between 4:00 PM and 5:00 PM
CRB = 2; // call arrival rate during busy hour in calls per hour (from table 2.2)
tavgB = (34 + 5) / 2; // average holding time during Busy Hour in minutes per call (from table 2.2)
IB = CRB * (tavgB / 60); // Traffic Intensity during Busy Hour
printf('Traffic Intensity during busy hour is %.2f Erlangs = %.1f CCS\n', IB, IB * 36);
