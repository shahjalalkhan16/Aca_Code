// Aim: To plot the responsivity curve for the given detector material

//Eg =1.43
clear;
close;
clc;
Eg=input("Band gap of material selected in eV: ");
e=1.6e-19;
eta=0.65; 
h=6.626e-34;
c=3e8;
lambdacf=h*c/(Eg*e*1e-6);
lambda=0:0.25:2
for i=1:9
    if(lambda(i)<lambdacf)
        responsivity(i)=eta*e*1e-6*lambda(i)/(h*c);
    else
        responsivity(i)=0;
    end
end
plot2d(lambda, responsivity);
xtitle('Responsivity curve', 'Lambda (um)', 'Responsivity');
