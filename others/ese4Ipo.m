clear
clc
pkg load statistics

n1=12;
n2=10;
x_medio=85;
std_x=4;
y_medio=81;
std_y=5;
alpha=0.05;
delta_mu=2;
var_stimatore= ((n1-1)*std_x^2+(n2-1)*std_y^2)/(n1+n2-2);
u=((x_medio-y_medio)-delta_mu)/sqrt(var_stimatore * (1/n1 + 1/n2))
t=tinv(1-alpha,n1+n2-2)
if(u>t)
    disp("Rifiuto mux <= muy+2 e quindi accetto mux>muy+2");
else
    disp("Non rifiuto mux <= muy+2 e quindi rifiuto mux>muy+2");
end