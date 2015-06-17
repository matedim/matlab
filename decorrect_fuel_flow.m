function Gt = decorrect_fuel_flow (Gt_cor, Th, Ph)
% decorrect_fuel_flow Расприведение расхода топлива к стандартным атмосферным условиям

    Gt = Gt_cor * Ph/101.325 * sqrt(Th/288.15);
