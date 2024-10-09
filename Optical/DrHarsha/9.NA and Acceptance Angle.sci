// Experiment 9: Compute the numerical aperture & the acceptance angle for the fiber in air.
clc;
clear;

c = 2.998 * 10^8; // Speed of light in vacuum (m/s)
v1 = 2.01 * 10^8; // Speed of light in the core
theta_c = 80 * %pi / 180; // Critical angle in radians

n1 = c / v1; // Refractive index of the core
disp(n1, "Core refractive index (n1) = ");

n2 = sin(theta_c) * n1; // Refractive index of the cladding
disp(n2, "Cladding refractive index (n2) = ");

NA = sqrt((n1^2) - (n2^2)); // Numerical aperture
disp(NA, "Numerical aperture (NA) = ");

theta_a = asin(NA); // Acceptance angle
theta_a_degrees = (theta_a) * (180 / %pi);
disp(theta_a_degrees, "Acceptance angle (degrees) = ");
