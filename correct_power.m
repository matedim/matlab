function N_cor = correct_power (N, Th, Ph)
% correct_power Приведение мощности к стандартным атмосферным условиям

%     if strcmp(Ph_unit , 'мм рт. ст.')
%         Ph = Ph * 0.133322047232867;
%     end
    N_cor = N * 101.325/Ph * sqrt(288.15/Th);
