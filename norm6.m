clear
clc
pkg load statistics

media=800;
devS=40;

p=normcdf(834,media,devS)-normcdf(778,media,devS)