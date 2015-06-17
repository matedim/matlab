function P_cor = correct_pressure (P, Ph)
% correct_power Приведение дваления к стандартным атмосферным условиям

%     if strcmp(Ph_unit , 'мм рт. ст.')
%         Ph = Ph * 0.133322047232867;
%     end
    P_cor = P * 101.325/Ph;
