clear
clc
pkg load statistics

nA=50;
nB=75;
muA=36;
muB=42;
devSA=6;
devSB=8;

mu=muB-muA;
devS=sqrt(devSA^2/nA+devSB^2/nB);

x96=norminv(0.04/2,mu,devS)
x96max=norminv(1-0.04/2,mu,devS)