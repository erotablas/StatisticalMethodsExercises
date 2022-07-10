clear
clc
pkg load statistics

alpha=0.01;
n=50;
devS=0.5;
mu=7.8;
media=8;

#H0: u=u0
#H1: u!=u0
#rifiuto H0 se |u|>z1-alpha/2
u=(media-mu)/sqrt((devS*devS)/n);
z=norminv(1-alpha/2,0,1);
disp("rifiuto H0")