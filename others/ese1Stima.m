clear
clc
pkg load statistics

media=2.6;
n=36;
sigma=0.3;

x95=norminv(0.025,media,sigma)
x95secondo=media+media-x95

x99=norminv(0.01/2,media,sigma)
x99secondo=media+media-x99