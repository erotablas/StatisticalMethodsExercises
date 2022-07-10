function test_mu_pop_sigma2_ignota_media_nota_var_nota(tipo_test, alpha_numero, mu_0, x_medio, x_var, n)
    u = (x_medio - mu_0) / sqrt(x_var/n);
    disp("statistica test");
    disp(u);
    if (tipo_test == 1)
        t = tinv(1 - (alpha_numero / 2), n - 1);
        disp("valore quantile");
        disp(t);
        if (abs(u) > t)
            disp("rifiuto H0");
        else
            disp("accetto H0");
        end
    else
        if (tipo_test ==2)
            t = tinv(1 - alpha_numero, n - 1);
            disp("valore quantile");
            disp(t);
            if (u > t)
                disp("rifiuto H0");
            else
                disp("accetto H0");
            end
        else
            if (tipo_test == 3)
                t = tinv(1 - alpha_numero, n - 1);
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