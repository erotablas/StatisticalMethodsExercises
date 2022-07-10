clear
clc
x=[14, 17, 27, 18, 12, 8, 22, 13, 19, 12];
n=10;
beta=mean(x);
f=@(x) (1/beta)*exp.^-(x/beta);