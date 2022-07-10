clear
clc
pkg load statistics

x=[9.8;10.2;10.4;9.8;10.0;10.2;9.6];
n=7;
media=mean(x);
#devS=std(x);

#calcolo la deviazione standard
devS2=0.0;
for i=1:n
  devS2+=(x(i)-media)^2;
end
devS2/=n-1;
devS=sqrt(devS2/n);

x95=norminv(0.05/2,media,devS)
x95max=norminv(1-0.05/2,media,devS)