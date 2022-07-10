clear
clc
media=40;
devS=6;
disp("Punto A:");
a=norminv(0.45,media,devS);
disp(a);
disp("Punto B:");
b=norminv(1-0.14,media,devS);
disp(b);
normcdf(b,media,devS)