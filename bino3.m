clear
clc
pkg load statistics

p=0.03;
n=20;
ordini=10;

#parteA

ptot=0.0;
for i=1:n
  ptot+=binopdf(i,n,p);
end
almeno1=ptot

#parteB
almenounoin3ordini=binopdf(3,ordini,almeno1)