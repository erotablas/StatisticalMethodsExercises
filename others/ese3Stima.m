clear
clc

x=[9.8,10.2,10.4,9.8,10.0,10.2,9.6];
media=mean(x);
sigma2=0.0;

for i=1:length(x)
sigma2=sigma2+(x(i)-media)^2;
end

sigma2=sigma2/(length(x)-1);
sigma=sqrt(sigma2/length(x));
x1=norminv(0.025,media,sigma)
x2=media+media-x1