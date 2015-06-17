function t_cor = correct_temperature_C (t,Th)
% correct_rotation_speed Приведение температуры в цельсиях к стандартным
% атмосферным условиям

    t_cor =(t+273.15)*(288.15/Th)-273.15;
