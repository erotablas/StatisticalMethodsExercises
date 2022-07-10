function test_sigma2_pop_mu_ignota_var_ignota(tipo_test, alpha_numero, sigma2_0, x)
    n = length(x);
    x_var = calcolo_sn2_campionaria(x);
    u = ((n - 1) * x_var) / sigma2_0;
    disp("statistica test");
    disp(u);
    if (tipo_test == 1)
        chi_min = chi2inv(alpha_numero / 2, n - 1);
        chi_max = chi2inv(1 - (alpha_numero / 2), n - 1);
        disp("valore quantile minimo");
        disp(chi_min);
        disp("valore quantile massimo");
        disp(chi_max)
        if (u < chi_min || u> chi_max)
            disp("rifiuto H0");
        else
            disp("accetto H0");
        end
    else
        if (tipo_test ==2)
            chi = chi2inv(1 - alpha_numero, n - 1);
            disp("valore quantile");
            disp(chi);
            if (u > chi)
                disp("rifiuto H0");
            else
                disp("accetto H0");
            end
        else
            if (tipo_test == 3)
                chi = chi2inv(alpha_numero, n - 1);
                disp("valore quantile");
                disp(chi);
                if (u < (0 - chi))
                    disp("rifiuto H0");
                else
                    disp("accetto H0");
                end
            end
        end
    end
end