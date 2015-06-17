function Gt_cor = correct_fuel_flow (Gt, Th, Ph)
% correct_fuel_flow Приведение расхода топлива к стандартным атмосферным условиям

    Gt_cor = Gt * 101.325/Ph * sqrt(288.15/Th);
