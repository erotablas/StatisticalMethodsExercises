clear
clc
load speed-and-density
sp=table2array(speedanddensity(:,1));
dn=table2array(speedanddensity(:,2));
corr_data=corrcoef(sp,dn);
disp("Il coefficiente di correlazione e'")
disp(corr_data)
xlabel("speed");
ylabel("density");
plot(sp,dn)