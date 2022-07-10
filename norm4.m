clear
clc
pkg load statistics

media=40;
devS=6;

#puntoA
a=norminv(0.45,media,devS)

#puntoB
b=norminv(1-0.14,media,devS)