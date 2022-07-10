clear
clc
p=0.30;
n=10;
x=3;
a=binopdf(3,n,p);
disp("Punto a:");
disp(a);
ptot=0.0;
for i=4:10
    ptot=binopdf(i,n,p)+ptot;
end
disp("Punto b:");
disp(ptot);