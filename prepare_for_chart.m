function for_chart = prepare_for_chart (th,Ph_mmM,N)
% prepare_for_chart Подготавливает данные к созданию графиков

    a = [th;N];
    Ph_mmM_vertical = [0;Ph_mmM'];
    a=[Ph_mmM_vertical,a];
    for_chart = a;
