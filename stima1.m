clear
clc
pkg load statistics

n=36;
media=2.6;
devS=0.3;

conf95=norminv(0.05/2,media,devS);
conf95max=norminv(1-0.05/2,media,devS);

conf99=norminv(0.01/2,media,devS);
conf99max=norminv(1-0.01/2,media,devS);