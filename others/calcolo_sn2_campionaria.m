function var_camp = calcolo_sn2_campionaria(dati_array)
    var_camp = 0.0;
    for i = 1 : length(dati_array)
        var_camp = var_camp + (dati_array(i) - mean(dati_array)).^2;
    end
    var_camp = var_camp / (length(dati_array) - 1);
end