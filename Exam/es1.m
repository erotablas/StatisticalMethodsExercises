clear
clc

campione=[13;15;4;23;17];
n=length(campione);

syms x;
syms beta;
#ipotizzo l'utilizzo del modello di probabilita' esponenziale
f=@(x,beta) 1/beta*exp(-x/beta);

syms L;
for i=1:n
  L*=f(campione(i),beta);
end

#derivo L rispetto a beta
der=diff(L,beta);
#calcolo la soluzione ponendo la derivata di L = 0 e risolvendo per beta
sol=solve(der==0,beta);
disp("La soluzione e':")
disp(sol)