//AIM:To compute the Thermal noise,Signal to noise ratio and Shot noise power for a PIN photodiode
clc;
clear;
// Consider resonsivity 0.5 A/W, load resistance = 200 ohm,system BW = 50MHz Temp = 40deg
T=40+273;
disp('K', T, 'T=')
delF = 50*(10^-3);
k =1.38*(10^ -23) ; // k=Boltzmann c o n s t a n t
e =1.6*(10^ -19) ; //E=E l e c t r o n
RL =2000; //RL=Load r e s i s t a n c e
//PNT=4∗k∗T∗ d elF whe re PNT=Thermal n o i s e
// I f s h o t n o i s e i s e q u a l to t h e rm al n o i s e , t h e n PNT=PNS
//PNS i s t h e s h o t n o i s e power
// So , 4∗ k∗T∗ d elF=2∗e ∗ i S ∗ d elF ∗RL
// Hence i S =(2∗k∗T) / ( e ∗RL)
iS =(2* k * T ) /( e * RL ) ; // i S=s i g n a l p h o t o c u r r e n t
disp ( 'Amp' , iS , 'iS=' )
R =0.5; //R=r e s p o n s i v i t y =0.5
PR = iS / R ;
disp ( 'Watts' ,PR , 'Receied  optic power PR=' ) ;
PNT =4* k * T* delF ;
disp ( PNT , 'Thermal noise PNT=' )
// ( b ) S i g n a l to n o i s e r a t i o :
// S i n c e PNS=PNT;
// T o t al n o i s e ;N=PNS+PNT
// So ,N=2∗PNS
//But PNS=2∗e ∗ i S ∗ d elF ∗RL
S_by_N =( iS ) /(4* e * delF ) ;
disp ( S_by_N , 'Singal to noise ratio ( S/N)=' )
// ( c ) Sho t n o i s e power :
PNS =2* e * iS * delF * RL ;
disp ( 'Watts' ,PNS , 'Shot noise  power PNS=' )
