function t = decorrect_temperature_C (t_cor,Th)
% correct_rotation_speed Расприведение температуры в цельсиях к стандартным
% атмосферным условиям

    t=(273.15+t_cor)*Th/288.15-273.15;
