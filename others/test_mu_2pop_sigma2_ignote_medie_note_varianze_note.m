function test_mu_2pop_sigma2_ignote_medie_note_varianze_note(tipo_test, alpha_numero, delta_mu, x_medio, y_medio, x_var, y_var, n_x, n_y)
    u = ((x_medio - y_medio) - delta_mu)/sqrt(x_var / n_x + y_var / n_y);
    disp("statistica test");
    disp(u)
    gradi_liberta_num = (x_var/n_x + y_var/n_y).^2;
    gradi_liberta_den = ((x_var/n_x).^2) / (n_x - 1) + ((y_var/n_y).^2) / (n_y - 1);
    gradi_liberta = floor(gradi_liberta_num/gradi_liberta_den);
    if (tipo_test == 1)
        t = tinv(1 - (alpha_numero / 2), gradi_liberta);
        disp("valore quantile");
        disp(t);
        if (abs(u) > t)
            disp("rifiuto H0");
        else
            disp("accetto H0");
        end
    else
        if (tipo_test ==2)
            t = tinv(1 - alpha_numero, gradi_liberta);
            disp("valore quantile");
            disp(t);
            if (u > t)
                disp("rifiuto H0");
            else
                disp("accetto H0");
            end
        else
            if (tipo_test == 3)
                t = tinv(1 - alpha_numero, gradi_liberta);
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