clear
clc
pkg load statistics

p=0.4;
n=15;

ptot=0.0;
for i=10:n
  ptot+=binopdf(i,n,p);
end
almeno10=ptot

ptot=0.0;
for i=3:8
  ptot+=binopdf(i,n,p);
end
da3a8=ptot

ptot=0.0;
for i=1:5
  ptot+=binopdf(i,n,p);
end
esattamente5=ptot