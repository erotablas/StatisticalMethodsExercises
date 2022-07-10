clear
clc
pkg load statistics

alpha=0.05;
n=12;
devS=11.9;
mu=46;
media=42;

#H0: mu=mu0 o mu>=mu0
#H1: mu<mu0
#rifiuto H0 se u<-z1-alpha
u=(mu-media)/sqrt((devS*devS)/n);
z=-norminv(1-alpha,0,1);
disp("NON rifiuto H0")