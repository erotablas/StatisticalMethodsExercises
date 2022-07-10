clear
clc
pkg load statistics

media=50;
devS=10;

p=normcdf(62,media,devS)-normcdf(45,media,devS)