clear
clc

mesi=[1;2;3;4;5;6;7;8;9];
caffe=[0.8;0.9;0.95;1;1.18;1.2;1.22;1.33;1.35];

p=polyfit(mesi,caffe,1);
f=@(x) p(1)*x+p(2);

x=min(mesi)-1:0.1:max(mesi)+1;
y=f(x);

plot(mesi,caffe,'o',x,y);

regressione=f;
regressione(12)