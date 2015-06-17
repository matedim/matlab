function n = decorrect_rotation_speed (n_cor,Th)
% correct_rotation_speed Приведение частоты вращения к стандартным
% атмосферным условиям

    n = n_cor*sqrt(Th/288.15);
