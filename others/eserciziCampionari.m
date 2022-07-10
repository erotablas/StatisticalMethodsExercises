clear
clc

%ese 1 
a=tinv(0.025,14)

%ese 2
b=tinv(0.95,14);
T=b-a

%ese 3
c=tcdf(-1.761,15);
k=tinv(c-0.045,15)

%ese 4
mu=500;
n=25;
mediaX=518;
s=40;

u=(mediaX-mu)/(s/sqrt(n))
tMin=tinv(0.05,n-1)
tMax=tinv(0.95,n-1)
if( u>=tMin && u<=tMax)
    disp("NON rifiuto mu");
else
    disp("Rifiuto mu");

end 