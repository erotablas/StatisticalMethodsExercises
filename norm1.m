clear
clc
pkg load statistics

ZmaggK=0.3015; #punto1
c=-0.18;
KminZminC=0.4167; #punto2

#determinare K
punto1=norminv(1-ZmaggK,0,1)

pc=normcdf(c,0,1);
punto2=norminv(pc-KminZminC,0,1)