clear
clc
disp("Il punto A risulta:")
disp(norminv(1-0.3015,0,1))

a=normcdf(-0.18,0,1);
k=norminv(a-0.4167,0,1);
disp("Il punto B risulta:")
disp(k)