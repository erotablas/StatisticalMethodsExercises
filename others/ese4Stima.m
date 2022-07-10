clear
clc

nA=50;
nB=75;
xAmedia=36;
xBmedia=42;
alpha=0.96;
sigmaA=6;
sigmaB=8;

sigmaTot=sqrt(sigmaA^2/nA+sigmaB^2/nB);
xMedia=xBmedia-xAmedia;

x1=norminv((1-alpha)/2,xMedia,sigmaTot)
x2=xMedia+xMedia-x1