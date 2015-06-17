function Gv = decorrect_air_flow (Gv_cor, Th, Ph)
% decorrect_fuel_flow Расприведение расхода воздуха к стандартным атмосферным условиям

    Gv = Gv_cor * Ph/101.325 * sqrt(288.15/Th);
