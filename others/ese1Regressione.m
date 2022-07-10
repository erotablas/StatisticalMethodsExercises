clear
clc

rumorosita=[25;26;29;31;24;29;26;27];
peso=[31;33;37;38;29;35;32;35];

p=polyfit(rumorosita,peso,1);
f=@(x) p(1)*x+p(2);

x=min(rumorosita)-1:0.1:max(rumorosita)+1;
y=f(x);

plot(rumorosita,peso,'o',x,y)

x=rumorosita;
y=peso;
xbar=mean(x);
ybar=mean(y);

Sxx=0.0;
Syy=0.0;
Sxy=0.0;
for i=1:1:length(x)
    Sxx=Sxx+(x(i)-xbar)^2;
    Syy=Syy+(y(i)-ybar)^2;
    Sxy=Sxy+(x(i)-xbar)*(y(i)-ybar);
end
R2=Sxy^2/(Sxx*Syy)

n=length(x);
SSres=(Sxx*Syy-Sxy^2)/Sxx;
R2corretto=1-SSres/Syy*(n-1)/(n-2)
regressione=@(x) p(1)*x+p(2)
regressione(40)
