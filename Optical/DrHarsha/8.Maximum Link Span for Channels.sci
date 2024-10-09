clear;
clc;
fb1=4*2.5;  // 4-channel, 2.5 Gb/s per channel
Lmax1=(6.1*(10^3))/((fb1)^2);
disp(Lmax1, "Maximum link span for 4-channel, 2.5 Gb/s optical link (km) =");
fb2=8*2.5;  // 8-channel, 2.5 Gb/s per channel
Lmax2=(6.1*(10^3))/((fb2)^2);
disp(Lmax2, "Maximum link span for 8-channel, 2.5 Gb/s optical link (km) =");
fb3=16*2.5; // 16-channel, 2.5 Gb/s per channel
Lmax3=(6.1*(10^3))/((fb3)^2);
disp(Lmax3, "Maximum link span for 16-channel, 2.5 Gb/s optical link (km) =");
