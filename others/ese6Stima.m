clear
clc
pkg load symbolic

x=[12,11.2,13.5,12.3,13.8,11.9];
n=length(x);

syms theta
syms x_input
f=@(x_input,theta) theta / x_input^(theta+1);
L=1.0;
for i=1:n
    L=L*f(x(i),theta);
end
L
der=diff(L,theta) %derivata di L rispetto theta
theta_sol=solve(der==0,theta)

