%clear all;
M = zeros(8,15,3);
% M(1,:,:)=[4.16,-25.0437,0.74;4.16,-20.0403,0.776797;4.16,-15.0262,0.809144;4.16,-10.0125,0.843864;4.16,-4.99862,0.877398;4.16,0.0154792,0.910085;4.16,5.02976,0.941924;4.16,10.0256,0.972199;4.16,15.0173,1.00052;4.16,19.9899,1.02981;4.16,25.0053,1.05674;4.16,29.9789,1.08146;4.16,34.953,1.10448;4.16,39.9694,1.12649;4.16,44.9439,1.14782];
% M(2,:,:)=[4.74,-25.0,0.864;4.74,-20.0,0.883;4.74,-15.0,0.902;4.74,-10.0,0.920;4.74,-5.0,0.939;4.74,0.0,0.956;4.74,5.0,0.972;4.74,10.0,0.987;4.74,15.0,1.001;4.74,20.0,1.013;4.74,25.0,1.025;4.74,29.9,1.037;4.74,35.0,1.048;4.74,39.9,1.059;4.74,45.0,1.070];
% M(3,:,:)=[5.28,-25.0078,0.914788;5.28,-19.9892,0.926966;5.28,-15.0549,0.938975;5.28,-10.0362,0.950644;5.28,-5.01738,0.962144;5.28,0.0015573,0.972966;5.28,5.02057,0.983449;5.28,9.99761,0.992915;5.28,15.0173,1.00052;5.28,19.9944,1.00947;5.28,24.9719,1.01708;5.28,29.9916,1.02451;5.28,34.9692,1.03143;5.28,39.9889,1.03853;5.28,44.9666,1.04511];
% M(4,:,:)=[6,-25.0213,0.975805;6,-20.0009,0.979678;6,-15.0225,0.983381;6,-10.0019,0.986407;6,-4.98122,0.989432;6,-0.00272059,0.992288;6,5.06018,0.995144;6,10.0387,0.99783;6,15.0173,1.00052;6,19.996,1.00253;6,24.9746,1.00487;6,30.0377,1.00688;6,35.0164,1.00855;6,39.9953,1.00971;6,44.9743,1.01053];
% M(5,:,:)=[6.28,-24.9804,0.981398;6.28,-20.0018,0.983915;6.28,-15.0232,0.986263;6.28,-10.0025,0.988949;6.28,-4.98167,0.991466;6.28,-0.00302079,0.993644;6.28,5.01779,0.995991;6.28,10.0386,0.998169;6.28,15.0173,1.00052;6.28,19.9961,1.00185;6.28,24.975,1.00284;6.28,30.0383,1.00417;6.28,35.0171,1.00533;6.28,39.9539,1.00632;6.28,44.975,1.00697];
% M(6,:,:)=[6.76,-24.9836,0.996144;6.76,-19.9624,0.996627;6.76,-15.0256,0.99711;6.76,-10.0044,0.997763;6.76,-4.98314,0.998076;6.76,-0.00414655,0.998729;6.76,5.05931,0.999042;6.76,9.99615,0.999525;6.76,15.0173,1.00052;6.76,19.9963,1.00083;6.76,24.9754,1.00114;6.76,29.9966,1.00163;6.76,34.9756,1.00245;6.76,39.9124,1.00293;6.76,44.9758,1.00342];
% M(7,:,:)=[7.52,-24.9856,1.00496;7.52,-20.0063,1.00442;7.52,-15.0271,1.00389;7.52,-10.0056,1.00336;7.52,-5.02635,1.00265;7.52,-0.00489705,1.00212;7.52,5.01655,1.00158;7.52,10.038,1.00088;7.52,15.0173,1.00052;7.52,19.9966,0.999475;7.52,24.976,0.998602;7.52,29.9975,0.997729;7.52,34.9768,0.996687;7.52,39.9985,0.995305;7.52,45.0203,0.993246];
% M(8,:,:)=[7.86,-24.986,1.00682;7.86,-20.0068,1.00663;7.86,-14.9854,1.00609;7.86,-10.0061,1.00556;7.86,-5.02684,1.00486;7.86,0.0368863,1.00398;7.86,5.01625,1.00294;7.86,10.0378,1.0019;7.86,15.0173,1.00052;7.86,19.9966,0.999475;7.86,24.9761,0.997754;7.86,29.9979,0.995695;7.86,34.9776,0.993127;7.86,39.9575,0.990051;7.86,45.0219,0.985958];

M(1,:,:)=[4.13,-25.0437,0.74;4.13,-20.0403,0.776797;4.13,-15.0262,0.809144;4.13,-10.0125,0.843864;4.13,-4.99862,0.877398;4.13,0.0154792,0.910085;4.13,5.02976,0.941924;4.13,10.0256,0.972199;4.13,15.0173,1.00052;4.13,19.9899,1.02981;4.13,25.0053,1.05674;4.13,29.9789,1.08146;4.13,34.953,1.10448;4.13,39.9694,1.12649;4.13,44.9439,1.14782      ];
M(2,:,:)=[4.74,-24.9966,0.86411;4.74,-20.0217,0.883237;4.74,-15.0046,0.902195;4.74,-10.0295,0.920475;4.74,-4.97,0.938754;4.74,0.00534736,0.955847;4.74,5.02308,0.972093;4.74,10.0411,0.987152;4.74,15.0173,1.00052;4.74,19.9936,1.01303;4.74,24.9701,1.02504;4.74,29.9467,1.03654;4.74,34.9656,1.0477;4.74,39.9422,1.05886;4.74,44.9612,1.06969     ];
M(3,:,:)=[5.21,-25.0078,0.914788;5.21,-19.9892,0.926966;5.21,-15.0549,0.938975;5.21,-10.0362,0.950644;5.21,-5.01738,0.962144;5.21,0.0015573,0.972966;5.21,5.02057,0.983449;5.21,9.99761,0.992915;5.21,15.0173,1.00052;5.21,19.9944,1.00947;5.21,24.9719,1.01708;5.21,29.9916,1.02451;5.21,34.9692,1.03143;5.21,39.9889,1.03853;5.21,44.9666,1.04511 ];
M(4,:,:)=[6.18,-25.0213,0.975805;6.18,-20.0009,0.979678;6.18,-15.0225,0.983381;6.18,-10.0019,0.986407;6.18,-4.98122,0.989432;6.18,-0.00272059,0.992288;6.18,5.06018,0.995144;6.18,10.0387,0.99783;6.18,15.0173,1.00052;6.18,19.996,1.00253;6.18,24.9746,1.00487;6.18,30.0377,1.00688;6.18,35.0164,1.00855;6.18,39.9953,1.00971;6.18,44.9743,1.01053 ];
M(5,:,:)=[6.28,-24.9804,0.981398;6.28,-20.0018,0.983915;6.28,-15.0232,0.986263;6.28,-10.0025,0.988949;6.28,-4.98167,0.991466;6.28,-0.00302079,0.993644;6.28,5.01779,0.995991;6.28,10.0386,0.998169;6.28,15.0173,1.00052;6.28,19.9961,1.00185;6.28,24.975,1.00284;6.28,30.0383,1.00417;6.28,35.0171,1.00533;6.28,39.9539,1.00632;6.28,44.975,1.00697 ];
M(6,:,:)=[6.76,-24.9836,0.996144;6.76,-19.9624,0.996627;6.76,-15.0256,0.99711;6.76,-10.0044,0.997763;6.76,-4.98314,0.998076;6.76,-0.00414655,0.998729;6.76,5.05931,0.999042;6.76,9.99615,0.999525;6.76,15.0173,1.00052;6.76,19.9963,1.00083;6.76,24.9754,1.00114;6.76,29.9966,1.00163;6.76,34.9756,1.00245;6.76,39.9124,1.00293;6.76,44.9758,1.00342];
M(7,:,:)=[7.52,-24.9856,1.00496;7.52,-20.0063,1.00442;7.52,-15.0271,1.00389;7.52,-10.0056,1.00336;7.52,-5.02635,1.00265;7.52,-0.00489705,1.00212;7.52,5.01655,1.00158;7.52,10.038,1.00088;7.52,15.0173,1.00052;7.52,19.9966,0.999475;7.52,24.976,0.998602;7.52,29.9975,0.997729;7.52,34.9768,0.996687;7.52,39.9985,0.995305;7.52,45.0203,0.993246   ];
M(8,:,:)=[7.86,-24.986,1.00682;7.86,-20.0068,1.00663;7.86,-14.9854,1.00609;7.86,-10.0061,1.00556;7.86,-5.02684,1.00486;7.86,0.0368863,1.00398;7.86,5.01625,1.00294;7.86,10.0378,1.0019;7.86,15.0173,1.00052;7.86,19.9966,0.999475;7.86,24.9761,0.997754;7.86,29.9979,0.995695;7.86,34.9776,0.993127;7.86,39.9575,0.990051;7.86,45.0219,0.985958    ];

p=zeros(size(M,1),3);% 3 - because the polyfit is squared
t_amb=-25:5:45;
An_f_t_Pk=zeros(size(t_amb,2),size(M,1));

for i=1:size(M,1)
    p(i,:)=polyfit(M(i,:,2),M(i,:,3),2);
    An_f_t_Pk(:,i)=polyval(p(i,:),t_amb);
end

Pk = M(:,1,1);
