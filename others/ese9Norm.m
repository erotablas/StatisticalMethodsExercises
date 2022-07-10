clear
clc
mu=40;
sigma=2;
probabilita=1-normcdf(43,mu,sigma)
n_resistori= 100*probabilita