function N = decorrect_power (N_cor, Th, Ph)
% correct_power Расприведение мощности к стандартным атмосферным условиям

    N = N_cor * Ph/101.325 * sqrt(Th/288.15);
