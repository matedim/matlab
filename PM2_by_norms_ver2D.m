clear all;
% International Standart Atmosphere parameters
th_ISA = 15;
Ph_mmM_ISA = 760;

%Создание массивов температур и давлений
th = -60:5:55; %С
Th = th+273.15; %К
th_ISA_index = find(th == th_ISA);%индекс нормальной температуры

Ph_mmM = 780:-10:400; %мм рт.ст
Ph= Ph_mmM * 0.133322047232867; %кПа
Ph_ISA_index = find(Ph_mmM == Ph_mmM_ISA);%индекс нормального давления

%Задание зависимостей масивов nгг = f(Ne), tст = f(Ne), Gт = f(Ne)
%зависимости получены как обобщение ПСИ серийных двигателей 9...00001,2,4,5,8,9
ngg_f_N = [53.00046672,41992.80756;60.98040071,42380.12398;70.3186565,42826.37793;79.48716975,43255.78968;87.80684312,43626.2571;100.8807911,44173.52807;114.1247784,44678.6856;124.652122,45065.96807;139.25477,45562.68525;154.1971998,46034.1312;168.8001446,46471.89274;184.2523106,46892.79849;200.7233557,47330.53513;214.6473726,47692.50561;229.5902686,48071.30697;248.9482084,48542.69406;267.4570965,48997.248;283.5887836,49376.03352;298.7015917,49737.98815;315.6823306,50133.60682;330.7952235,50478.71698;343.3610033,50764.90545;363.0587249,51211.02131;384.7941199,51707.64341;399.7371854,52052.75583;419.6047343,52498.86943;436.4157307,52877.64589;454.9248306,53290.08865;469.0189291,53601.52346;480.3960874,53854.03883;494.3203162,54173.89813;504.3390255,54392.74268;516.0557536,54662.098;526.0742086,54931.47596;536.7719304,55209.2671;550.5259929,55596.50655;560.5444055,55874.30674;569.8836361,56126.84928;580.7506343,56514.12722;593.4,57000;600,57400;650,60820;700,66830];
tg_f_N = [50.98032765,491.3126545;70.60955414,495.6769311;90.72756896,499.9662846;110.7892646,504.4991384;130.6065154,508.9196074;134.8933714,509.9123399;157.0609034,514.9696561;185.658786,521.7127444;200.5876781,525.4776354;220.4,530.07;237.4,534.52;244.9,536.55;251.8,538.23;259.4,540.09;268.9,542.62;277,544.81;286.7,547.51;294.5,549.53;302.4,551.89;310,554.08;318.3,556.61;325.9,559.14;334.6,561.67;344.2,565.04;356.4,569.25;366,572.79;377.9,577.34;386.7,580.55;397.4,584.76;408.2,589.48;419.7,594.2;426,596.9;434.2,600.61;444.6,605.66;454.2,610.38;462.7,614.77;471.5,619.49;479.6,623.87;487.2,628.08;498.6,634.83;506.8,639.72;514.5,643.76;521.2,648.31;525.8,651.35;531.1,654.72;537.7,659.1;541.9,661.97;550,668.3;600,706;700,798];
Gt_f_N = [21.84,39.1316;52.34,52.0286;166.61,70.6491;295.88,91.5032;332.54,98.0205;416.04,113.5793;483.3,126.7355;528.89,136.29;583.5,149.217];% Характеристика от 08.02.2012 АИ-450М №007
Pk_f_N = [21.84,2.9609;52.34,4.219;166.61,5.4761;295.88,6.5955;332.54,6.8996;416.04,7.5772;483.3,8.0666;528.89,8.3746;583.5,8.7521];  % Характеристика от 08.02.2012 АИ-450М №007
Gv_f_N = [21.84,0.8158;52.34,1.1078;166.61,1.3558;295.88,1.5573;332.54,1.6089;416.04,1.7198;483.3,1.7879;528.89,1.8233;583.5,1.8592]; % Характеристика от 08.02.2012 АИ-450М №007

%ngg_f_N = [50,40920;100,43320;150,45200;200,46700;250,48000;300,49170;350,50310;400,51600;450,52710;500,53780;550,54760;600,55770;650,56620];
%tg_f_N = [50,465.4;100,472.9;150,481.1;200,490.9;250,504.1;300,518.0;350,532.5;400,548.0;450,565.7;500,586.0;550,609.1;600,633.6;650,658.7];
%Gt_f_N = [50,48.9;100,58.2;150,66.8;200,75.1;250,83.6;300,92.2;350,100.8;400,110.5;450,120.0;500,129.8;550,140.0;600,151.0;650,162.5];
%Pk_f_N =[50,4.02;100,4.66;150,5.20;200,5.65;250,6.11;300,6.54;350,6.97;400,7.39;450,7.79;500,8.16;550,8.52;600,8.86;650,9.17];
% ngg_f_N = [53.00046672,41992.80756;60.98040071,42380.12398;70.3186565,42826.37793;79.48716975,43255.78968;87.80684312,43626.2571;100.8807911,44173.52807;114.1247784,44678.6856;124.652122,45065.96807;139.25477,45562.68525;154.1971998,46034.1312;168.8001446,46471.89274;184.2523106,46892.79849;200.7233557,47330.53513;214.6473726,47692.50561;229.5902686,48071.30697;248.9482084,48542.69406;267.4570965,48997.248;283.5887836,49376.03352;298.7015917,49737.98815;315.6823306,50133.60682;330.7952235,50478.71698;343.3610033,50764.90545;363.0587249,51211.02131;384.7941199,51707.64341;399.7371854,52052.75583;419.6047343,52498.86943;436.4157307,52877.64589;454.9248306,53290.08865;469.0189291,53601.52346;480.3960874,53854.03883;494.3203162,54173.89813;504.3390255,54392.74268;516.0557536,54662.098;526.0742086,54931.47596;536.7719304,55209.2671;550.5259929,55596.50655;560.5444055,55874.30674;569.8836361,56126.84928;580.7506343,56514.12722;593.4,57000;600,57400;650,60820;700,66830];
% tg_f_N = [50.98032765,491.3126545;70.60955414,495.6769311;90.72756896,499.9662846;110.7892646,504.4991384;130.6065154,508.9196074;134.8933714,509.9123399;157.0609034,514.9696561;185.658786,521.7127444;200.5876781,525.4776354;220.4,530.07;237.4,534.52;244.9,536.55;251.8,538.23;259.4,540.09;268.9,542.62;277,544.81;286.7,547.51;294.5,549.53;302.4,551.89;310,554.08;318.3,556.61;325.9,559.14;334.6,561.67;344.2,565.04;356.4,569.25;366,572.79;377.9,577.34;386.7,580.55;397.4,584.76;408.2,589.48;419.7,594.2;426,596.9;434.2,600.61;444.6,605.66;454.2,610.38;462.7,614.77;471.5,619.49;479.6,623.87;487.2,628.08;498.6,634.83;506.8,639.72;514.5,643.76;521.2,648.31;525.8,651.35;531.1,654.72;537.7,659.1;541.9,661.97;550,668.3;600,706;700,798];
% Gt_f_N = [168,71.6483844434205;170,72.2371824367406;172,72.5277099133142;174,72.8085851898960;176,73.1690240095753;178,73.5420040443061;180,73.8944543695865;182,74.2342474320269;184,74.5703586160069;186,74.9104689468406;188,75.2610563293558;190,75.6164792915870;192,75.9667077951771;194,76.3116418390017;196,76.6540594104733;198,76.9967504152060;200,77.3410330649485;202,77.6869778379449;204,78.0346081329095;206,78.3834463540524;208,78.7311368459569;210,79.0747871353781;212,79.4117607027948;214,79.7429654178549;216,80.0714057817231;218,80.4002183871938;220,80.7326483879943;222,81.0713525141159;224,81.4172306596841;226,81.7709019123584;228,82.1329914455321;230,82.5033011611463;232,82.8795313562171;234,83.2589699984252;236,83.6388017173583;238,84.0161112087910;240,84.3890970997188;242,84.7589283494219;244,85.1272756587256;246,85.4958625579179;248,85.8662035687592;250,86.2381547757287;252,86.6108807964840;254,86.9835127750836;256,87.3551500632693;258,87.7248715916739;260,88.0924005513588;262,88.4584980601960;264,88.8240366953153;266,89.1899131324988;268,89.5570463276931;270,89.9257656732486;272,90.2948944695598;274,90.6629888674031;276,91.0285597388630;278,91.3901659240728;280,91.7473759912497;282,92.1004113337335;284,92.4495100547382;286,92.7949243685444;288,93.1376594355920;290,93.4801255626532;292,93.8249471084477;294,94.1748180738894;296,94.5321012846762;298,94.8949888883412;300,95.2590769207276;302,95.6198149700717;304,95.9742206564213;306,96.3228074650475;308,96.6665574467220;310,97.0064792549890;312,97.3436081461656;314,97.6790059793417;316,98.0137597432193;318,98.3488397329808;320,98.6849769133662;322,99.0228906740136;324,99.3633161136034;326,99.7070040377953;328,100.054466792860;330,100.405264491604;332,100.758716015128;334,101.114120959154;336,101.470759634020;338,101.827893064687;340,102.184889210961;342,102.541939130479;344,102.899579923127;346,103.258360968258;348,103.618842958291;350,103.981597898712;352,104.347209108073;354,104.716271217995;356,105.089377449610;358,105.466500594303;360,105.846697739417;362,106.228931521489;364,106.612139642004;366,106.995234867391;368,107.377105029023;370,107.756617991219;372,108.133258997277;374,108.507777235152;376,108.881088405398;378,109.254127660691;380,109.627849605831;382,110.003228297743;384,110.381257245477;386,110.762949410207;388,111.149337205230;390,111.541283980452;392,111.937483044569;394,112.335189532041;396,112.731577704455;398,113.123763722120;400,113.508805644069;402,113.883741933902;404,114.248244050511;406,114.606398099279;408,114.962783269734;410,115.322069799137;412,115.689018972483;414,116.067656726742;416,116.457459377168;418,116.856281148748;420,117.261930067047;422,117.672169490494;424,118.084718110384;426,118.497249950877;428,118.907397889185;430,119.313742767068;432,119.717197870279;434,120.119036547860;436,120.520556004999;438,120.923077303023;440,121.327945359406;442,121.736520806123;444,122.149627661064;446,122.567188365191;448,122.989038232883;450,123.415008269657;452,123.844925172167;454,124.278609397441;456,124.715793872979;458,125.156092426209;460,125.599102997462;462,126.044415604798;464,126.491612344009;466,126.940267388615;468,127.389946989868;470,127.840209476750;472,128.290745240324;474,128.741977367445;476,129.194578372094;478,129.649231893089;480,130.106632557669;482,130.567485981497;484,131.032508768657;486,131.502419096548;488,131.977497423012;490,132.457390635256;492,132.941690265755;494,133.429980138723;496,133.921836370113;498,134.416827367619;500,134.914513830672;502,135.414448750445;504,135.916177409849;506,136.419237383535;508,136.923158537894;510,137.427463031056];
% Pk_f_N =[53.38832487,4.204047218;61.18471517,4.301854975;75.4216018,4.480607083;93.04822335,4.691399663;110.5053582,4.885328836;135.92837,5.155143339;158.6395939,5.384485666;183.3846588,5.617200675;206.7738297,5.824620573;221.3496898,5.951096121;238.8068246,6.099494098;256.0944726,6.241146712;274.5685279,6.391231029;294.2289904,6.548060708;316.2622673,6.723440135;336.2617033,6.881956155;349.4816695,6.988195616;368.2946983,7.139966273;399.6497462,7.386172007;418.6322617,7.534569983;444.9027073,7.735244519;462.5293288,7.86846543;477.1051889,7.97470489;487.1049069,8.047217538;496.7656514,8.114671164;510.3245911,8.207419899;550,8.52;600,8.86];

%Создание кубической интерполяции nгг = f(Ne), Ne = f(nгг)
s_ngg_f_N = pchip(ngg_f_N(:,1),ngg_f_N(:,2));
s_N_f_ngg = pchip(ngg_f_N(:,2),ngg_f_N(:,1));

%Создание кубической интерполяции tст = f(Ne), Ne = f(tст)
s_tg_f_N = pchip(tg_f_N(:,1),tg_f_N(:,2));
s_N_f_tg = pchip(tg_f_N(:,2),tg_f_N(:,1));

%Создание кубической интерполяции Gт = f(Ne), Ne = f(Gт)
s_Gt_f_N = pchip(Gt_f_N(:,1),Gt_f_N(:,2));
s_N_f_Gt = pchip(Gt_f_N(:,2),Gt_f_N(:,1));

%Создание кубической интерполяции Рк = f(Ne), Ne = f(Рк)
s_Pk_f_N = pchip(Pk_f_N(:,1),Pk_f_N(:,2));
s_N_f_Pk = pchip(Pk_f_N(:,2),Pk_f_N(:,1));

%Создание кубической интерполяции Рк = f(nгг) 
%TODO DANGER "magic numbers"
s_Pk_f_ngg = pchip(ppval(s_ngg_f_N,55:5:580),ppval(s_Pk_f_N,55:5:580));
s_ngg_f_Pk = pchip(ppval(s_Pk_f_N,55:5:580),ppval(s_ngg_f_N,55:5:580));
s_tg_f_Pk = pchip(ppval(s_Pk_f_N,55:5:580),ppval(s_tg_f_N,55:5:580));
s_Gt_f_Pk = pchip(ppval(s_Pk_f_N,170:5:580),ppval(s_Gt_f_N,170:5:580));

clearvars Gt_f_N Pk_f_N ngg_f_N tg_f_N

%Условия режима
N_r=            [465,430];%,370,320,300,285]; %мощности на режимах двигателя
th_power_rate=  [015,025];%,015,030,025,030]; %максимальная температура для поддержания мощности на режиме
Th_power_rate=th_power_rate + 273.15;
%Нахождение макс. ngg для заданной мощности
N_r_pr = zeros(1,size(N_r,2));
ngg_max_pr = N_r_pr;
ngg_max = N_r_pr;
for i=1:size(N_r,2)
    N_r_pr(i) = correct_power(N_r(i),Th_power_rate(i),Ph(Ph_ISA_index));
    ngg_max_pr(i)=ppval(s_ngg_f_N,N_r_pr(i)); % максимальная частота вращения определяется по maximun roration speed is defined in ISA condotion
    ngg_max(i)=decorrect_rotation_speed(ngg_max_pr(i),Th_power_rate(i));
end
clearvars th_power_rate Th_power_rate N_r_pr ngg_max_pr
ngg_pr_max = 57000; % maximum corrected GG rotational speed
tg_max=660;

%Создание матриц
Rezult.Rez_column=zeros(size(N_r,2));
Rez_column=zeros(size(Ph,2)*size(Th,2),10);
ngg=zeros(size(Ph,2),size(Th,2)); ngg_pr=ngg;
tg=zeros(size(Ph,2),size(Th,2)); tg_pr=tg;
Gt=zeros(size(Ph,2),size(Th,2)); Gt_pr=Gt;
Pk=zeros(size(Ph,2),size(Th,2)); Pk_pr=Pk;
N=zeros(size(Ph,2),size(Th,2)); N_pr=N;
An_arr=zeros(size(Ph,2),size(Th,2));

%Циклическое вычисление для каждого из режима мощности
for k=1:size(N_r,2)
    %Циклическое вычисление параметров двигателя при различных сочетаниях
    %атмосферных условий (tн,Pн).
    acceptable_accuracy = 1.00; %accuracy acceptable for difference of pressure after compressor when calculated of corrected and uncorrected power of power turbine
    iteration_critical_number = 10; %number of iterations when the local accuracy doubled to avoid infinite loop
    point_counter = 1;
    for j=1:size(Ph,2)
        for i=1:size(Th,2)
            N_pr(j,i)=correct_power(N_r(k),Th(1,i),Ph(1,j));
            ngg_pr(j,i)=ppval(s_ngg_f_N,N_pr(j,i));
            tg_pr(j,i)=ppval(s_tg_f_N,N_pr(j,i));
            ngg(j,i)=decorrect_rotation_speed(ngg_pr(j,i),Th(1,i));
            tg(j,i)=decorrect_temperature_C(tg_pr(j,i),Th(1,i));

            if ngg(j,i)<ngg_max(k) && tg(j,i)<tg_max && ngg_pr(j,i)<ngg_pr_max %Если в один из вычисленных параметров выходит за рамки ограничений
                N(j,i)=N_r(k);
                N_ogr(1,1)= N(j,i);
                N_ogr_min = N(j,i);
                N_ogr_min_index = 1;
            else
                % Вычисляем мощность при ограничении по максималънои температуре
                tg_pr(j,i)=correct_temperature_C(tg_max,Th(1,i));
                N_pr(j,i)=ppval(s_N_f_tg,tg_pr(j,i));
                N_ogr(1,2)=decorrect_power(N_pr(j,i),Th(1,i),Ph(1,j));
                % Вычисляем мощность при ограничении по максималънои частоте вращения
                ngg_pr(j,i)=correct_rotation_speed(ngg_max(k),Th(1,i));
                N_pr(j,i)=ppval(s_N_f_ngg,ngg_pr(j,i));
                N_ogr(1,3)=decorrect_power(N_pr(j,i),Th(1,i),Ph(1,j));
                % Вычисляем мощность при ограничении по максимальной приведенной частоте вращения
                ngg_pr(j,i)=ngg_pr_max;
                N_pr(j,i)=ppval(s_N_f_ngg,ngg_pr(j,i));
                N_ogr(1,4)=decorrect_power(N_pr(j,i),Th(1,i),Ph(1,j));

                [N_ogr_min,N_ogr_min_index] = min(N_ogr); %Определяем наименьшую мощностъ от каждого из ограничителей
            end; % end if ngg
            
            %Согласно наименьшей мощности из ограничений расчитываем остальные параметры
            if N_ogr_min_index==1 % N_режим_max
                accuracy_is_not_acceptable = true();
                local_acceptable_accuracy = acceptable_accuracy; %локальная приемлимая точность (может быть загрублена)/ local acceptable accuracy that could be increased
                power_matching_counter = 1;% счётчик итераций /counter of iterations
                N_iter1_pr = N_pr(j,i); %мощность для итераций / power for iteration
                Pk_iter1_pr = ppval(s_Pk_f_N,N_iter1_pr);
                while accuracy_is_not_acceptable %do_calculation
                    An = power_turbine_correction(Th(1,i)-273.15,Pk_iter1_pr);% расчёт коррекции мощности СТ по Pк и Твх / calcucation of power turbine power correction
                    
                    N_iter2_pr = N_iter1_pr/An;
                    Pk_iter2_pr=ppval(s_Pk_f_N,N_iter2_pr);
                    
                    accuracy = abs((Pk_iter2_pr-Pk_iter1_pr)/Pk_iter1_pr);
                    accuracy_is_not_acceptable = (accuracy > local_acceptable_accuracy);
                    power_matching_counter = power_matching_counter+1;
                    if accuracy_is_not_acceptable
                        N_iter1_pr = N_iter2_pr;
                        Pk_iter1_pr = Pk_iter2_pr;
                    end;
                    if power_matching_counter == iteration_critical_number
                        local_acceptable_accuracy = local_acceptable_accuracy * 2;
                        power_matching_counter = 1;
                    end;
                end; %while
                N_corrected_pr = N_iter2_pr;
                % Calculation of pressure after the compressor
                Pk_pr(j,i)=Pk_iter2_pr;
                Pk(j,i)= decorrect_pressure(Pk_pr(j,i),Ph(1,j));
                % Calculation of rotation speed
                ngg_pr(j,i)=ppval(s_ngg_f_N,N_corrected_pr);
                ngg(j,i)=decorrect_rotation_speed(ngg_pr(j,i),Th(1,i));
                % Fuell mass flow calculation
                Gt_pr(j,i)=ppval(s_Gt_f_N,N_corrected_pr);
                Gt(j,i)=decorrect_fuel_flow(Gt_pr(j,i),Th(1,i),Ph(1,j));
                clearvars N_iter1_pr Pk_iter1_pr N_iter2_pr Pk_iter2_pr N_corrected_pr
                clearvars accuracy local_acceptable_accuracy
            elseif N_ogr_min_index==2 % tст_ф_max
                tg(j,i)=tg_max;
                tg_pr(j,i)=(tg(j,i)+273.15)*(288.15/Th(1,i))-273.15;
                tg_pr(j,i)=correct_temperature_C(tg(j,i),Th(1,i));
                N_pr(j,i)=ppval(s_N_f_tg,tg_pr(j,i));
                N(j,i)=decorrect_power(N_pr(j,i),Th(1,i),Ph(1,j));
                ngg_pr(j,i)=ppval(s_ngg_f_N,N_pr(j,i));
                ngg(j,i)=decorrect_rotation_speed(ngg_pr(j,i),Th(1,i));
            elseif  N_ogr_min_index==3 % nгг_ф_max
                ngg(j,i)=ngg_max(k);
                ngg_pr(j,i)=correct_rotation_speed(ngg(j,i),Th(1,i));

                % Calculation of pressure after the compressor
                Pk_pr(j,i)=ppval(s_Pk_f_ngg,ngg_pr(j,i));
                Pk(j,i)= decorrect_pressure(Pk_pr(j,i),Ph(1,j));
                
                N_pr(j,i)=ppval(s_N_f_Pk,Pk_pr(j,i));
                N(j,i)=decorrect_power(N_pr(j,i),Th(1,i),Ph(1,j));

                tg_pr(j,i)=ppval(s_tg_f_Pk,Pk_pr(j,i));
                tg(j,i)=decorrect_temperature_C(tg_pr(j,i),Th(1,i)); 
                
                %Расчёт расхода топлива
                Gt_pr(j,i)=ppval(s_Gt_f_Pk,Pk_pr(j,i));
                Gt(j,i)=decorrect_fuel_flow(Gt_pr(j,i),Th(1,i),Ph(1,j));
            elseif N_ogr_min_index==4 % nгг_пр_max
                ngg_pr(j,i)=ngg_pr_max;
                ngg(j,i)=decorrect_rotation_speed(ngg_pr(j,i),Th(1,i));
                N_pr(j,i)=ppval(s_N_f_ngg,ngg_pr(j,i));
                N(j,i)=decorrect_power(N_pr(j,i),Th(1,i),Ph(1,j));
                tg_pr(j,i)=ppval(s_tg_f_N,N_pr(j,i));
                tg(j,i)=decorrect_temperature_C(tg_pr(j,i),Th(1,i));
            end % end if N_ogr_min
            
            % Fuel mass flow adjustment caused by fuel's heat capacity differences
            % The calculation of k_Gt is described in Temporary ПМ-2 Procedure
            k_Gt=1+0.00066*(Th(1,i)-Th(1,th_ISA_index)); %
            Gt_pr(j,i)=Gt_pr(j,i)/k_Gt;
            Gt(j,i)=decorrect_fuel_flow(Gt_pr(j,i),Th(1,i),Ph(1,j));
            
            An_arr(j,i) = An;
            
            % Forming of result data table
            Rez_column(point_counter,:)=[Ph_mmM(1,j),th(1,i),N_pr(j,i),N(j,i),ngg_pr(j,i),ngg(j,i),tg_pr(j,i),tg(j,i),Gt_pr(j,i),Gt(j,i)];
            point_counter = point_counter+1;
        end; % end for i
    end; % end for j
    clearvars k_Gt acceptable_accuracy accuracy_is_not_acceptable iteration_critical_number power_matching_counter
    
    Rezult(k).An_arr = An_arr;
    Rezult(k).rate = N_r(k);
    Rezult(k).Rez_column = Rez_column;
    Rezult(k).N_pr = N_pr;
    Rezult(k).N = N;
    Rezult(k).ngg_pr = ngg_pr;
    Rezult(k).ngg = ngg;
    Rezult(k).tg_pr = tg_pr;
    Rezult(k).tg = tg;
    Rezult(k).Gt_pr = Gt_pr;
    Rezult(k).Gt = Gt;
    Rezult(k).Pk_pr = Pk_pr;
    Rezult(k).Pk = Pk;
    Rezult(k).ngg_norm = ngg(Ph_ISA_index,th_ISA_index);
    Rezult(k).tg_norm = tg(Ph_ISA_index,th_ISA_index);
    Rezult(k).Gt_norm = Gt(Ph_ISA_index,th_ISA_index);
    Rezult(k).Pk_norm = Pk(Ph_ISA_index,th_ISA_index);
    Rezult(k).K_N = Rezult(k).N ./ Rezult(k).rate;
    Rezult(k).K_ngg = Rezult(k).ngg ./ Rezult(k).ngg_norm;
    Rezult(k).K_tg = Rezult(k).tg ./ Rezult(k).tg_norm;
    Rezult(k).K_Gt = Rezult(k).Gt ./ Rezult(k).Gt_norm;
    Rezult(k).K_Pk = Rezult(k).Pk ./ Rezult(k).Pk_norm;
    Rezult(k).K_All = [Rezult(k).K_N;Rezult(k).K_Gt;Rezult(k).K_Pk;Rezult(k).K_ngg;Rezult(k).K_tg];
    %Rezult(k).chart = prepare_for_chart(th,Ph_mmM,N);

end; % end for k

% All unnecessary variables are cleared
clearvars i j k N_ogr_min_index N_ogr_min counter Rez_column th_ISA Ph_mmM_ISA N_ogr;
clearvars N_pr N ngg_pr ngg tg_pr tg Gt_pr Gt Rez An An_arr Pk Pk_pr ;
