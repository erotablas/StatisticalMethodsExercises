clear
clc
p=0.4;
n=15;
ptot=0.0;
for i=10:15
     ptot=binopdf(i,n,p)+ptot;
end
disp("PUNTO A:")
disp(ptot)
ptot=0.0;
for i=3:8
     ptot=binopdf(i,n,p)+ptot;
end
disp("PUNTO B:")
disp(ptot)
ptot=binopdf(5,n,p);
disp("PUNTO C:")
disp(ptot)
