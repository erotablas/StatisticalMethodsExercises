clear
clc
media0=46;
media1=42;
n=12;
devS=11.9;
alpha=0.05;

u=(media1-media0)/sqrt(devS*devS/n)
%z=norminv(1-(alpha/2),media0,devS);
t=tinv(1-(alpha),n-1);
t=-t
disp("Rifiuto H0")