clear
clc

val=[12;11.2;13.5;12.3;13.8;11.9];
n=length(val);

syms theta;
syms x;
f=@(x,theta) theta/x^(theta+1);

syms L
for i=1:n
  L*=f(val(i),theta);
end

der=diff(L,theta);
sol=solve(der==0, theta)