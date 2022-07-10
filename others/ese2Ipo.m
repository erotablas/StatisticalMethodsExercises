clear
clc
media0=8.0;
devS=0.5;
n=50;
media1=7.8;
alpha=0.01;

u=(media1-media0)/sqrt(devS*devS/n)
%z=norminv(1-(alpha/2),media0,devS)
z=norminv(1-(alpha/2),0,1)
disp("Accetto H0")