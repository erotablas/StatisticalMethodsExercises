clear
clc
pkg load statistics

x=[9.8,10.2,10.4,9.8,10.0,10.2,9.6];
devS=std(x,0); #deviazione standard

media=mean(x);
sigma2=0.0;

for i=1:length(x)
sigma2=sigma2+(x(i)-media)^2;
end

sigma2=sigma2/(length(x)-1);
sigma=sqrt(sigma2/length(x)) #bo