clear
clc

A=[22.3;24.1;22.9;24.0;23.8;23.2;24.6;24.2;22.7;22.0;24.9;22.6;23.3;20.9;24.0;20.3;20.9;21.6;19.9;23.2;25.7;24.0;25.1;25.1;25.7;24.9;23.2;22.0;22.3;22.7];
B=[23.8;23.1;24.4;22.9;22.1;24.8;21.4;24.2;20.5;22.7;20.7;24.1;23.2;23.4;22.9;24.1;25.3;24.5;25.6;24.6;24.0;24.9;24.6;23.5;25.6;23.1;26.1;24.1;24.8;24.2];
mediaA=mean(A);
mediaB=mean(B);
alpha=0.05;
n=length(A);
#m=n
m=n;

#test parametrico di confronto tra 2 popolazioni del terzo tipo
#H0: mediaA=mediaB o mediaA>=mediaB
#H1: mediaA<mediaB
#rifiutero' H0 se u<-t 1-alpha ; n+m-2

#calcolo Sx ed Sy dato che le varianze sono incognite e uguali
Sx2=0.0;
Sy2=0.0;
for i=1:n
  Sx2+=(A(i)-mediaA)^2;
  Sy2+=(B(i)-mediaB)^2;
end
Sx2=Sx2/(n-1);
Sy2=Sy2/(m-1);

#calcolo v (varianza combinata)
v=((n-1)*Sx2+(m-1)*Sy2)/(n+m-2);

#stimo le variabili e confronto
u=(mediaA-mediaB)/sqrt(v*(1/n+1/m));
t=tinv(1-alpha,n+m-2);
disp("risulta u>-t, percio' non rifiuto H0");