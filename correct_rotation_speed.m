function n_cor = correct_rotation_speed (n,Th)
% correct_rotation_speed Приведение частоты вращения к стандартным
% атмосферным условиям

    n_cor = n*sqrt(288.15/Th);
