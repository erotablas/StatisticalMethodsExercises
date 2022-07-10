clear
clc
%Non è proprio i lterzo, questo è quello delle batterie
x = [1.9; 2.4; 3.0; 3.5; 4.2];
sigma = 1;
mu = 3;
n = 5;

S2 = 0.0;
for i=1:n
    S2 = S2 + (x(i) - mu).^2;
end
%prendo un intervallo di confidenza del 95% --> alpha = 0.05
%P[(n-1)S2/chi(alpha/2) < sigma2 < (n-1)S2/chi(1 - alpha/2)]
alpha = 0.05;
chi_min = chi2inv(1 -alpha / 2, n - 1)
chi_max = chi2inv( alpha / 2, n - 1)
v_min = ((n - 1) * S2)/chi_min  %minimo intervallo confidenza
v_max = ((n - 1) * S2)/chi_max  %massimo intervallo confidenza
if (sigma^2 >= v_min || sigma^2 <= v_max)
    disp("Resto convinto");
else
    disp("La mia sigma non rientra nell'intervallo");
end

%Questo è il numero 3
clear
clc
v_max=-1.761;
p=0.045;
n=15;
p_min_v= tcdf(v_max,n-1)
k=tinv(p_min_v-p,n-1)