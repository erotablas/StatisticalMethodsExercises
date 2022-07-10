clear
clc
nA=18.0;
nB=18.0;
sigmaA=1.0;
sigmaB=1.0;

sigma=sqrt((sigmaA^2)/nA+(sigmaB^2)/nB);  
media=0;
pm=normcdf(-3,media,1)  %abbiamo messo sigma=1 perchè la z è distribuita secondo una normale standard
pp=1-normcdf(3,media,1) % P(Z>3)=1-P(Z<3)
pt=pm+pp