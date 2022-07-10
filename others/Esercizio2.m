%ESERCIZIO 2
clear
clc
mediaH1=35.0;
n=20;
mediaH0=33.1;
devS=4.3;
alpha=0.05;

%dai dati emerge che si debba fare un t test del tipo 3 dato che la
%varianza della popolazione è ignota
%con H0: mediaH0=mediaH0 o mediaH0>=mediaH1
%ed  H1: mediaH0<mediaH1
%si rifiuta H0 se |u|<-t calcolato in 1-alpha
u=(mediaH0-mediaH1)/sqrt(devS*devS/n)
%z=norminv(1-(alpha/2),media0,devS)
t=-tinv(1-alpha,n-1)
disp("Non rifiuto l'ipotesi H0 quindi rifiuto l'ipotesi H1 e concludo che c'è stato il miglioramento delle prestazioni")

