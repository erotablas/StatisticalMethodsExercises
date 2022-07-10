clear
clc

mesi=[1;2;3;4;5;6;7;8;9];
cafe=[0.8;0.9;0.95;1.0;1.18;1.2;1.22;1.33;1.35];

p=polyfit(mesi,cafe,1);
f=@(x) p(1)*x+p(2);
x=min(mesi)-1:0.1:max(mesi)+1;
y=f(x);
plot(mesi,cafe,'o',x,y)
regressione=@(x) p(1)*x+p(2)
regressione(12)