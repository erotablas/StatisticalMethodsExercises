clear
clc
n=15;
alpha=0.05;
x=[2.76,5.18,2.68,3.05,4.10,7.05,6.60,4.79,7.39,7.30,11.78,3.90,26.00,67.48,17.04];
y=[7.02,3.10,5.44,3.99,5.21,10.26,13.91,18.53,7.91,4.85,11.10,3.74,94.03,94.03,41.70];
w=x-y;
w_medio=mean(w);
w_var=calcolo_sn2_campionaria(w);
u=(w_medio)/sqrt(w_var/n)
t=tinv(1-(alpha/2),n-1)
if(abs(u)>t)
    disp("rifiuto muw =0 e quindi accetto muw !=0 --> concentrazioni alterate");
else
    disp("non rifiuto muw =0 e quindi rifiuto muw !=0 --> concentrazioni stabili");
end