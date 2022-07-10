% H0: m1=m2 oppure m2<=m1
% H1: m2>m1

clear
clc
n1=8;
n2=6;
gruppo1=[1.17,0.94,1.10,0.81,1.05,0.89,1.00,0.56];
gruppo2=[1.44,1.54,0.90,1.14,0.91,1.13];
media1=mean(gruppo1);
media2=mean(gruppo2);
sx2=0.0;
for i=1:n1
    gruppo1(i);
    sx2=sx2+(gruppo1(i)-media1).^2;
end
sx2=sx2/(n1-1)

sy2=0.0;
for i=1:n2
    sy2=sy2+(gruppo2(i)-media2).^2;
end
sy2=sy2/(n2-1)

gradi_liberta = floor((sx2/n1 + sy2/n2).^2/(1/(n1 - 1) * (sx2/n1).^2 + 1/(n2 - 1) * (sy2/n2).^2))
alpha=0.05;
u=(media1-media2)/sqrt((sx2/n1)+(sy2/n2))
t=-tinv(1-alpha,gradi_liberta)
disp("Non rifiuto H0 perchè u>t")