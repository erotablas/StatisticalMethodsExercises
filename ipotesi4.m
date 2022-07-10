clear
clc
pkg load statistics

nA=12;
nB=10;
muA=85;
muB=81;
devSA=4;
devSB=5;
alpha=0.05;

#H0: muA=mB+2 o muA<=muB+2
#H1: muA>muB+2
#rifiutero' H0 se u>z1-alpha
u=(muA-(muB+2))/sqrt((devSA^2)/nA+(devSB^2)/nB);
z=norminv(1-alpha,0,1)
t=tinv(1-alpha,nA+nB-2)
disp("in entrambi i casi NON rifiuto H0")