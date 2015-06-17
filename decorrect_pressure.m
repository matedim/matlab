function P = decorrect_pressure (P_cor, Ph)
% correct_power Расприведение давления к стандартным атмосферным условиям

    P = P_cor * Ph/101.325;
