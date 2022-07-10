function test_mu_2pop_sigma2_ignote_uguali_dati_campione_ignoti(tipo_test, alpha_numero, delta_mu, x, y)
    n_x = length(x);
    n_y = length(y);
    x_medio = mean(x);
    y_medio = mean(y);
    x_var = calcolo_sn2_campionaria(x);
    y_var = calcolo_sn2_campionaria(y);
    sp_num = (n_x - 1) * x_var + (n_y - 1) * y_var;
    sp_den = n_y + n_x - 2;
    sp = sp_num / sp_den;
    u = ((x_medio - y_medio) - delta_mu)/sqrt(sp * (1/n_x + 1/n_y));
    disp("statistica test");
    disp(u)
    if (tipo_test == 1)
        t = tinv(1 - (alpha_numero / 2), sp_den);
        disp("valore quantile");
        disp(t);
        if (abs(u) > t)
            disp("rifiuto H0");
        else
            disp("accetto H0");
        end
    else
        if (tipo_test ==2)
            t = tinv(1 - alpha_numero, sp_den);
            disp("valore quantile");
            disp(t);
            if (u > t)
                disp("rifiuto H0");
            else
                disp("accetto H0");
            end
        else
            if (tipo_test == 3)
                t = tinv(1 - alpha_numero, sp_den);
                disp("valore quantile");
                disp(t);
                if (u < (0 - t))
                    disp("rifiuto H0");
                else
                    disp("accetto H0");
                end
            end
        end
    end
end