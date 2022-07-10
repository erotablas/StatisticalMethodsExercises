clear
clc
pkg load statistics

n=25;
varianza=4;
media=6.2;

norminv(0.95,media,sqrt(varianza/n))