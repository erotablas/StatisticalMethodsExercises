x=Speedmph;
y=StoppingDistance;

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
