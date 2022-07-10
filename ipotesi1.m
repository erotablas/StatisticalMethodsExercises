clear
clc
pkg load statistics

alpha=0.05;
n=100;
mu=70;
devS=8.9;
media=71.8;

#ipotesi H1: vita media >70 anni
#H0: mu1<=mu0 o mu1=mu0
#H1: mu1>mu0
#rifiuto H0 se u>z1-alpha
u=(media-mu)/sqrt((devS*devS)/n);
z=norminv(1-alpha,0,1);
disp("rifiuto H0")