%ESERCIZIO 1

clear
clc
p=0.25;
n=15;
ptot=0.0;

for i=3:6        %calcolo la probabilit� per i valori compresi tra 3 e 6
     ptot=binopdf(i,n,p)+ptot;
end
disp("PUNTO 1:")
disp(ptot)

ptot=0.0;        %resetto la variabile per la probabilit�
for i=4:n        %calcolo la probabilit� per i valori >=4
     ptot=binopdf(i,n,p)+ptot;
end
disp("PUNTO 2:")
disp(1-ptot)     %voglio sapere la probabilit� per quelli <4, quindi tolgo 1 alla probabilit� calcolata


ptot=0.0;        %resetto la variabile per la probabilit�
for i=6:n        %calcolo la probabilit� per i valori >5
     ptot=binopdf(i,n,p)+ptot;
end
disp("PUNTO 3:")
disp(ptot)
