clear;
clc;
na = 1.33;  // Refractive index of water
n2 = 1.59;  // Refractive index of cladding
NA = 0.20;  // Numerical aperture
n1 = sqrt((NA^2) + (n2^2));  // Core refractive index
disp(n1, "n1 =");
fiy_c = asin(n2 / n1);  // Critical angle
fiy_c_degrees = (fiy_c) * (180 / %pi);  // Critical angle in degrees
disp(fiy_c_degrees, "Critical angle at the core-cladding interface (degrees) =");
theta_a = asin(NA / na);  // Acceptance angle
theta_a_degrees = (theta_a) * (180 / %pi);  // Acceptance angle in degrees
disp(theta_a_degrees, "Acceptance angle (degrees) =");
