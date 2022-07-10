clear
clc

rumorosita=[25;26;29;31;24;29;26;27];
peso=[31;33;37;38;29;35;32;35];

p=polyfit(rumorosita,peso,1);
f=@(x) p(1)*x+p(2);

x=min(rumorosita)-1:0.1:max(rumorosita)+1;
y=f(x);

plot(rumorosita, peso, 'o', x, y);

#calcolo coefficente di Pearson

x=rumorosita;
y=peso;
xbar=mean(x);
ybar=mean(y);

Sxx=0.0;
Syy=0.0;
Sxy=0.0;
for i=1:length(x)
  Sxx+=(x(i)-xbar)^2;
  Syy+=(y(i)-ybar)^2;
  Sxy+=(x(i)-xbar)*(y(i)-ybar);
end
SSreg=(Sxy)^2/Sxx;
SSres=(Sxx*Syy-Sxy^2)/Sxx;

R2=SSreg/Syy
R2corr=1-((SSres/(length(x)-2))/(Syy/(length(x)-1)))

R=corrcoef(x,y)

regressione=f;
regressione(40)