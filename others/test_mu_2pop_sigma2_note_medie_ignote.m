function test_mu_2pop_sigma2_note_medie_ignote(tipo_test, alpha_numero, delta_mu, sigma2_0_x, sigma2_0_y, x, y)
    n_x = length(x);
    n_y = length(y);
    u = ((mean(x) - mean(y)) - delta_mu)/sqrt((sigma2_0_x/n_x) + (sigma2_0_y/n_y));
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