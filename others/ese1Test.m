clc
clear
pkg load statistics

x=[3; 4; 5; 5; 6; 6; 6; 7; 7; 9; 10; 11; 12; 12; 13; 13; 13; 14; 15];
alpha=0.05;
mediaX=mean(x);
m0=13;
n=length(x);

devS=0.0;
for i=1:n
    devS=devS+((x(i)-mediaX)^2/(n-1));
end

u=(mediaX-m0)/(sqrt(devS*devS)/n)
z=norminv(1-(alpha/2),0,1)
disp("Quindi rifiuto H0 perchè |u|>z(1-alpha/2)")