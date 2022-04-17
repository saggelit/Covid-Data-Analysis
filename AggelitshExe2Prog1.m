%% Aggelitsi Sotiria AEM:4366
%%
clear; clc; clf;

Covid_Confirmed=xlsread('Covid19Confirmed.xlsx');
Covid_Deaths=xlsread('Covid19Deaths.xlsx');

United_Kingdom=148;
[UK_C,UK_D]=AggelitshExe2Fun1(Covid_Confirmed,Covid_Deaths,United_Kingdom,73,211);
figure(1)
bar(UK_C)
xlabel('Numberd Days of 1st Wave')
ylabel('Daily Covid Confirmed Counts')
title('United Kingdom - Distribution of 1st Wave Covid Confirmed Cases')
figure(2)
bar(UK_D)
xlabel('Numberd Days of 1st Wave')
ylabel('Daily Covid Deaths Counts')
title('United Kingdom - Distribution of 1st Wave Covid Deaths')
[h_UK_C,p_UK_C,h_UK_D,p_UK_D]=AggelitshExe2Fun2('United Kingdom',UK_C,UK_D);

France=49; % Country code
[FR_C,FR_D]=AggelitshExe2Fun1(Covid_Confirmed,Covid_Deaths,France,57,149);
figure(11)
bar(FR_C)
xlabel('Numberd Days of 1st Wave')
ylabel('Daily Covid Confirmed Counts')
title('France - Distribution of 1st Wave Covid Confirmed Cases')
figure(21)
bar(FR_D)
xlabel('Numberd Days of 1st Wave')
ylabel('Daily Covid Deaths Counts')
title('France - Distribution of 1st Wave Covid Deaths')
[h_FR_C,p_FR_C,h_FR_D,p_FR_D]=AggelitshExe2Fun2('France',FR_C,FR_D);

Germany=53; % Country code
[DEU_C,DEU_D]=AggelitshExe2Fun1(Covid_Confirmed,Covid_Deaths,Germany,57,167);
figure(12)
bar(DEU_C)
xlabel('Numberd Days of 1st Wave');ylabel('Daily Covid Confirmed Counts')
title('Germany - Distribution of 1st Wave Covid Confirmed Cases')
figure(22)
bar(DEU_D)
xlabel('Numberd Days of 1st Wave'); ylabel('Daily Covid Deaths Counts')
title('Germany - Distribution of 1st Wave Covid Deaths')
[h_DEU_C,p_DEU_C,h_DEU_D,p_DEU_D]=AggelitshExe2Fun2('Germany',DEU_C,DEU_D);

Greece=55;
[GR_C,GR_D]=AggelitshExe2Fun1(Covid_Confirmed,Covid_Deaths,Greece,58,154);
figure(13)
bar(GR_C)
xlabel('Numberd Days of 1st Wave');ylabel('Daily Covid Confirmed Counts')
title('Greece - Distribution of 1st Wave Covid Confirmed Cases')
figure(23)
bar(GR_D)
xlabel('Numberd Days of 1st Wave'); ylabel('Daily Covid Deaths Counts')
title('Greece - Distribution of 1st Wave Covid Deaths')
[h_GR_C,p_GR_C,h_GR_D,p_GR_D]=AggelitshExe2Fun2('Greece',GR_C,GR_D);

Italy=68;
[IT_C,IT_D]=AggelitshExe2Fun1(Covid_Confirmed,Covid_Deaths,Italy,53,197);
figure(14)
bar(IT_C)
xlabel('Numberd Days of 1st Wave');ylabel('Daily Covid Confirmed Counts')
title('Italy - Distribution of 1st Wave Covid Confirmed Cases')
figure(24)
bar(IT_D)
xlabel('Numberd Days of 1st Wave'); ylabel('Daily Covid Deaths Counts')
title('Italy - Distribution of 1st Wave Covid Deaths')
[h_IT_C,p_IT_C,h_IT_D,p_IT_D]=AggelitshExe2Fun2('Italy',IT_C,IT_D);

Netherlands=98;
[NL_C,NL_D]=AggelitshExe2Fun1(Covid_Confirmed,Covid_Deaths,Netherlands,59,193);
figure(15)
bar(NL_C)
xlabel('Numberd Days of 1st Wave');ylabel('Daily Covid Confirmed Counts')
title('Netherlands - Distribution of 1st Wave Covid Confirmed Cases')
figure(25)
bar(NL_D)
xlabel('Numberd Days of 1st Wave'); ylabel('Daily Covid Deaths Counts')
title('Netherlands - Distribution of 1st Wave Covid Deaths')
[h_NL_C,p_NL_C,h_NL_D,p_NL_D]=AggelitshExe2Fun2('Netherlands',NL_C,NL_D);

Poland=113;
[PL_C,PL_D]=AggelitshExe2Fun1(Covid_Confirmed,Covid_Deaths,Poland,68,192);
figure(16)
bar(PL_C)
xlabel('Numberd Days of 1st Wave');ylabel('Daily Covid Confirmed Counts')
title('Poland - Distribution of 1st Wave Covid Confirmed Cases')
figure(26)
bar(PL_D)
xlabel('Numberd Days of 1st Wave'); ylabel('Daily Covid Deaths Counts')
title('Poland - Distribution of 1st Wave Covid Deaths')
[h_PL_C,p_PL_C,h_PL_D,p_PL_D]=AggelitshExe2Fun2('Poland',PL_C,PL_D);

Russia=118;
[RU_C,RU_D]=AggelitshExe2Fun1(Covid_Confirmed,Covid_Deaths,Russia,72,241);
figure(17)
bar(RU_C)
xlabel('Numberd Days of 1st Wave');ylabel('Daily Covid Confirmed Counts')
title('Russia - Distribution of 1st Wave Covid Confirmed Cases')
figure(27)
bar(RU_D)
xlabel('Numberd Days of 1st Wave'); ylabel('Daily Covid Deaths Counts')
title('Russia - Distribution of 1st Wave Covid Deaths')
[h_RU_C,p_RU_C,h_RU_D,p_RU_D]=AggelitshExe2Fun2('Russia',RU_C,RU_D);

Spain=131;
[ES_C,ES_D]=AggelitshExe2Fun1(Covid_Confirmed,Covid_Deaths,Spain,56,160);
figure(18)
bar(ES_C)
xlabel('Numberd Days of 1st Wave');ylabel('Daily Covid Confirmed Counts')
title('Spain - Distribution of 1st Wave Covid Confirmed Cases')
figure(28)
bar(ES_D)
xlabel('Numberd Days of 1st Wave'); ylabel('Daily Covid Deaths Counts')
title('Spain - Distribution of 1st Wave Covid Deaths')
[h_ES_C,p_ES_C,h_ES_D,p_ES_D]=AggelitshExe2Fun2('Spain',ES_C,ES_D);

Sweden=134;
[SE_C,SE_D]=AggelitshExe2Fun1(Covid_Confirmed,Covid_Deaths,Sweden,58,202);
figure(19)
bar(SE_C)
xlabel('Numberd Days of 1st Wave');ylabel('Daily Covid Confirmed Counts')
title('Sweden - Distribution of 1st Wave Covid Confirmed Cases')
figure(29)
bar(SE_D)
xlabel('Numberd Days of 1st Wave'); ylabel('Daily Covid Deaths Counts')
title('Sweden - Distribution of 1st Wave Covid Deaths')
[h_SE_C,p_SE_C,h_SE_D,p_SE_D]=AggelitshExe2Fun2('Sweden',SE_C,SE_D);

Turkey=144;
[TR_C,TR_D]=AggelitshExe2Fun1(Covid_Confirmed,Covid_Deaths,Turkey,74,155);
figure(110)
bar(TR_C)
xlabel('Numberd Days of 1st Wave');ylabel('Daily Covid Confirmed Counts')
title('Turkey - Distribution of 1st Wave Covid Confirmed Cases')
figure(210)
bar(TR_D)
xlabel('Numberd Days of 1st Wave'); ylabel('Daily Covid Deaths Counts')
title('Turkey - Distribution of 1st Wave Covid Deaths')
[h_TR_C,p_TR_C,h_TR_D,p_TR_D]=AggelitshExe2Fun2('Turkey',TR_C,TR_D);

%% Ranking of countries based on probability
rank_names={'United_Kingdom';'France';'Germany';'Greece';'Italy';
    'Netherlands';'Poland';'Russia';'Spain';'Sweden';'Turkey'};
rank_h_Cases=[h_UK_C;h_FR_C;h_DEU_C;h_GR_C;h_IT_C;h_NL_C;h_PL_C;h_RU_C;h_ES_C;
    h_SE_C;h_TR_C];
rank_p_Cases=[p_UK_C;p_FR_C;p_DEU_C;p_GR_C;p_IT_C;p_NL_C;p_PL_C;p_RU_C;p_ES_C;
    p_SE_C;p_TR_C];
rank_h_Deaths=[h_UK_D;h_FR_D;h_DEU_D;h_GR_D;h_IT_D;h_NL_D;h_PL_D;h_RU_D;h_ES_D;
    h_SE_D;h_TR_D];
rank_p_Deaths=[p_UK_D;p_FR_D;p_DEU_D;p_GR_D;p_IT_D;p_NL_D;p_PL_D;p_RU_D;p_ES_D;
    p_SE_D;p_TR_D];

rank_total_Cases=table(rank_names,rank_h_Cases,rank_p_Cases);
fprintf('Ranking of countries based on probability for Cases')
sortrows(rank_total_Cases,3)

rank_total_Deaths=table(rank_names,rank_h_Deaths,rank_p_Deaths);
fprintf('Ranking of countries based on probability for Deaths')
sortrows(rank_total_Deaths,3)
%% SYMPERASMATA - SXOLIA
% Stis 10 xwres pou epilexthhkan kai fainontai parapanw egine elegxos gia
% katanomi KERNEL me x^2. Prwta, omws afairethkan mhdenika kai arnhtika
% dedomena, opws anafairetai stis odhgies me tropo pou fainetai sth Fun1.
% Oi perissoteres xwres, opws fainontai sta
% apotelesmata prosarmozontai apo thn KERNEL kai gia ta krousmata kai gia
% tous thanatous. Me bash ta apotelesmata ths pithanothtas apodoxhs dinetai 
% h katataxh gia thn prosarmogh gia kathe xwra sthn KERNEL apo th mikroterh
% pithanothta sth megalyterh, xwrista gia krousmata kai thanatous.