clear
clc
pkg load statistics

n=100;
media=71.8;
devS=8.9;
alpha=0.05;

u=(70.0-71.8)/sqrt(devS*devS/n)
%z=-norminv(1-alpha,media,devS)
z=-norminv(1-alpha,0,1)
disp("Accetto H0")