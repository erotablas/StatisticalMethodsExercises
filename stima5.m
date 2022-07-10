clear
clc

mesi=[14;17;27;18;12;8;22;13;19;12];
n=length(mesi);

syms beta;
syms x;
f=@(x,beta) 1/beta*exp(-x/beta);

syms L;
for i=1:n
  L*=f(mesi(i),beta);
end

der=diff(L,beta);
sol=solve(der==0,beta)