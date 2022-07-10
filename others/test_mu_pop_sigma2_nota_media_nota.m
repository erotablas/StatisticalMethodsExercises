function test_mu_pop_sigma2_nota_media_nota(tipo_test, alpha_numero, mu_0, sigma2_0, x_medio, n)
    u = (x_medio - mu_0)/sqrt(sigma2_0/n);
    disp("statistica test");
    disp(u);
    if (tipo_test == 1)
        z = norminv(1 - (alpha_numero / 2), 0, 1);
        disp("valore quantile");
        disp(z);
        if (abs(u) > z)
            disp("rifiuto H0");
        else
            disp("accetto H0");
        end
    else
        if (tipo_test ==2)
            z = norminv(1 - alpha_numero, 0, 1);
            disp("valore quantile");
            disp(z);
            if (u > z)
                disp("rifiuto H0");
            else
                disp("accetto H0");
            end
        else
            if (tipo_test == 3)
                z = norminv(1 - alpha_numero, 0, 1);
                disp("valore quantile");
                disp(z);
                if (u < (0 - z))
                    disp("rifiuto H0");
                else
                    disp("accetto H0");
                end
            end
        end
    end
end