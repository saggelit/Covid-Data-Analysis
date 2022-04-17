%% Aggelitsi Sotiria AEM:4366
%%
clear; clc; clf;

Covid_Confirmed=xlsread('Covid19Confirmed.xlsx');
Covid_Deaths=xlsread('Covid19Deaths.xlsx');

A=148; % Country code: Hnwmeno Basileio -> Dinetai stis odhgies
UK_C=Covid_Confirmed(A,73:211)';
UK_D=Covid_Deaths(A,73:211)';

bins=80;

%% Rabdogrammata
figure(1)
bar(UK_C) %deixnei ta krousmata gia kathe mera kata a/a
xlabel('Numberd Days of 1st Wave')
ylabel('Daily Covid Confirmed Counts')
title('United Kingdom - Distribution of 1st Wave Covid Confirmed Cases')

figure(2)
bar(UK_D) %deixnei tous thanatous gia kathe mera kata a/a
xlabel('Numberd Days of 1st Wave')
ylabel('Daily Covid Deaths Counts')
title('United Kingdom - Distribution of 1st Wave Covid Deaths')

%% Parametrikes katanomes - Krousmata
fprintf('\nCASES\n\n')
% ******BirnbaumSaunders******
pd_CON_B1=fitdist(UK_C,'BirnbaumSaunders');            %pd:propability distribution
[h_CON_B1,p_CON_B1]=chi2gof(UK_C,'CDF',pd_CON_B1);     % 1o krithrio me chi2gof alla poly mikres p-values
fprintf('BirnbaumSaunders-Cases: h=%f,p=%f\n',h_CON_B1,p_CON_B1)

figure(11)
h_CON_B2=histfit(UK_C,bins,'BirnbaumSaunders');
title('BirnbaumSaunders-Cases')
histdata_CON_B = get(h_CON_B2(1),'XData');    % Get Histogram Data
redcurve_CON_B = get(h_CON_B2(2),'YData');    % Get Fit Data

histctrs_CON_B=mean(histdata_CON_B);                      % Mean Of Bin Edges
redcurve2_CON_B=mean(reshape(redcurve_CON_B,2,[]));       % Mean Of Bin Edges Fit
fit_err_CON_B=histctrs_CON_B-redcurve2_CON_B;             % Error
SSE_CON_B=sum(fit_err_CON_B.^2);                          % Sum-Squared Error
MSE_CON_B=mean(fit_err_CON_B.^2);                         % Mean-Squared-Error
RMSE_CON_B=sqrt(MSE_CON_B);                               % Root-Mean-Squared-Error
fprintf('BirnbaumSaunders-Cases:Root of Mean-Squared-Error=%e\n\n',RMSE_CON_B)

% ******EXPONENTIAL******
pd_CON_E1=fitdist(UK_C,'Exponential');                % pd:propability distribution
[h_CON_E1,p_CON_E1]=chi2gof(UK_C,'CDF',pd_CON_E1);    % 1o krithrio me chi2gof alla poly mikres p-values
fprintf('Exponential-Cases: h=%f,p=%f\n',h_CON_E1,p_CON_E1)

figure(12)
h_CON_E2=histfit(UK_C,bins,'Exponential');
title('Exponential-Cases')
histdata_CON_E=get(h_CON_E2(1),'XData');    % Get Histogram Data
redcurve_CON_E=get(h_CON_E2(2),'YData');    % Get Fit Data

histctrs_CON_E=mean(histdata_CON_E);                      % Mean Of Bin Edges
redcurve2_CON_E=mean(reshape(redcurve_CON_E,2,[]));       % Mean Of Bin Edges Fit
fit_err_CON_E=histctrs_CON_E-redcurve2_CON_E;             % Error
SSE_CON_E=sum(fit_err_CON_E.^2);                          % Sum-Squared Error
MSE_CON_E=mean(fit_err_CON_E.^2);                         % Mean-Squared-Error
RMSE_CON_E=sqrt(MSE_CON_E);                               % Root-Mean-Squared-Error
fprintf('Exponetial-Cases:Root of Mean-Squared-Error=%e\n\n',RMSE_CON_E)


% ******Weibull******
pd_CON_W1=fitdist(UK_C,'Weibull');                     % pd:propability distribution
[h_CON_W1,p_CON_W1]=chi2gof(UK_C,'CDF',pd_CON_W1);     % 1o krithrio me chi2gof alla poly mikres p-values
fprintf('Weibull-Cases: h=%f,p=%f\n',h_CON_W1,p_CON_W1)

figure(13)
h_CON_W2=histfit(UK_C,bins,'Weibull');
title('Weibull-Cases')
histdata_CON_W = get(h_CON_W2(1),'XData');    % Get Histogram Data
redcurve_CON_W = get(h_CON_W2(2),'YData');    % Get Fit Data

histctrs_CON_W=mean(histdata_CON_W);                      % Mean Of Bin Edges
redcurve2_CON_W=mean(reshape(redcurve_CON_W,2,[]));       % Mean Of Bin Edges Fit
fit_err_CON_W=histctrs_CON_W-redcurve2_CON_W;             % Error
SSE_CON_W=sum(fit_err_CON_W.^2);                          % Sum-Squared Error
MSE_CON_W=mean(fit_err_CON_W.^2);                         % Mean-Squared-Error
RMSE_CON_W=sqrt(MSE_CON_W);                               % Root-Mean-Squared-Error
fprintf('Weibull-Cases:Root of Mean-Squared-Error=%e\n\n',RMSE_CON_W)


% ******HalfNormal******
pd_CON_H1=fitdist(UK_C,'HalfNormal');                % pd:propability distribution
[h_CON_H1,p_CON_H1]=chi2gof(UK_C,'CDF',pd_CON_H1);   % 1o krithrio me chi2gof alla poly mikres p-values
fprintf('HalfNormal-Cases: h=%f,p=%f\n',h_CON_H1,p_CON_H1)

figure(14)
h_CON_H2=histfit(UK_C,bins,'HalfNormal');
title('HalfNormal-Cases')
histdata_CON_H=get(h_CON_H2(1),'XData');    % Get Histogram Data
redcurve_CON_H=get(h_CON_H2(2),'YData');    % Get Fit Data

histctrs_CON_H=mean(histdata_CON_H);                      % Mean Of Bin Edges
redcurve2_CON_H=mean(reshape(redcurve_CON_H,2,[]));       % Mean Of Bin Edges Fit
fit_err_CON_H=histctrs_CON_H-redcurve2_CON_H;             % Error
SSE_CON_H=sum(fit_err_CON_H.^2);                          % Sum-Squared Error
MSE_CON_H=mean(fit_err_CON_H.^2);                         % Mean-Squared-Error
RMSE_CON_H=sqrt(MSE_CON_H);                               % Root-Mean-Squared-Error
fprintf('HalfNormal-Cases:Root of Mean-Squared-Error=%e\n\n',RMSE_CON_H)


% ******KERNEL******
pd_CON_K1=fitdist(UK_C,'Kernel','Kernel','epanechnikov'); % pd:propability distribution
[h_CON_K1,p_CON_K1]=chi2gof(UK_C,'CDF',pd_CON_K1);        % 1o krithrio me chi2gof alla poly mikres p-values
fprintf('Kernel-Cases: h=%f,p=%f\n',h_CON_K1,p_CON_K1) 

figure(15)
h_CON_K2=histfit(UK_C,bins,'Kernel');
title('Kernel-Cases')
histdata_CON_K = get(h_CON_K2(1),'XData');    % Get Histogram Data
redcurve_CON_K = get(h_CON_K2(2),'YData');    % Get Fit Data

histctrs_CON_K=mean(histdata_CON_K);                      % Mean Of Bin Edges
redcurve2_CON_K=mean(reshape(redcurve_CON_K,2,[]));       % Mean Of Bin Edges Fit
fit_err_CON_K=histctrs_CON_K-redcurve2_CON_K;             % Error
SSE_CON_K=sum(fit_err_CON_K.^2);                          % Sum-Squared Error
MSE_CON_K=mean(fit_err_CON_K.^2);                         % Mean-Squared-Error
RMSE_CON_K=sqrt(MSE_CON_K);                               % Root-Mean-Squared-Error
fprintf('Kernel-Cases:Root of Mean-Squared-Error=%e\n\n',RMSE_CON_K)


%% Parametrikes katanomes - Thanatoi
fprintf('\nDEATHS\n\n')
% ******BirnbaumSaunders******
pd_DEA_B1=fitdist(UK_D,'BirnbaumSaunders');            %pd:propability distribution
[h_DEA_B1,p_DEA_B1]=chi2gof(UK_D,'CDF',pd_DEA_B1);     % 1o krithrio me chi2gof alla poly mikres p-values
fprintf('BirnbaumSaunders-Deaths: h=%f,p=%f\n',h_DEA_B1,p_DEA_B1)

figure(21)
h_DEA_B2=histfit(UK_D,bins,'BirnbaumSaunders');
title('BirnbaumSaunders-Deaths')
histdata_DEA_B=get(h_DEA_B2(1),'XData');    % Get Histogram Data
redcurve_DEA_B=get(h_DEA_B2(2),'YData');    % Get Fit Data

histctrs_DEA_B=mean(histdata_DEA_B);                      % Mean Of Bin Edges
redcurve2_DEA_B=mean(reshape(redcurve_DEA_B,2,[]));       % Mean Of Bin Edges Fit
fit_err_DEA_B=histctrs_DEA_B-redcurve2_DEA_B;             % Error
SSE_DEA_B=sum(fit_err_DEA_B.^2);                          % Sum-Squared Error
MSE_DEA_B=mean(fit_err_DEA_B.^2);                         % Mean-Squared-Error
RMSE_DEA_B=sqrt(MSE_DEA_B);                               % Root-Mean-Squared-Error
fprintf('BirnbaumSaunders-Deaths:Root of Mean-Squared-Error=%e\n\n',RMSE_DEA_B)


% ******EXPONENTIAL******
pd_DEA_E1=fitdist(UK_D,'Exponential');                % pd:propability distribution
[h_DEA_E1,p_DEA_E1]=chi2gof(UK_D,'CDF',pd_DEA_E1);    % 1o krithrio me chi2gof alla poly mikres p-values
fprintf('Exponential-Deaths: h=%f,p=%f\n',h_DEA_E1,p_DEA_E1)

figure(22)
h_DEA_E2=histfit(UK_D,bins,'Exponential');
title('Exponential-Deaths')
histdata_DEA_E=get(h_DEA_E2(1),'XData');    % Get Histogram Data
redcurve_DEA_E=get(h_DEA_E2(2),'YData');    % Get Fit Data

histctrs_DEA_E=mean(histdata_DEA_E);                      % Mean Of Bin Edges
redcurve2_DEA_E=mean(reshape(redcurve_DEA_E,2,[]));       % Mean Of Bin Edges Fit
fit_err_DEA_E=histctrs_DEA_E-redcurve2_DEA_E;             % Error
SSE_DEA_E=sum(fit_err_DEA_E.^2);                          % Sum-Squared Error
MSE_DEA_E=mean(fit_err_DEA_E.^2);                         % Mean-Squared-Error
RMSE_DEA_E=sqrt(MSE_DEA_E);                               % Root-Mean-Squared-Error
fprintf('Exponetial-Deaths:Root of Mean-Squared-Error=%e\n\n',RMSE_DEA_E)


% ******Weibull******
pd_DEA_W1=fitdist(UK_D,'Weibull');                     % pd:propability distribution
[h_DEA_W1,p_DEA_W1]=chi2gof(UK_D,'CDF',pd_DEA_W1);     % 1o krithrio me chi2gof alla poly mikres p-values
fprintf('Weibull-Deaths: h=%f,p=%f\n',h_DEA_W1,p_DEA_W1)

figure(23)
h_DEA_W2=histfit(UK_D,bins,'Weibull');
title('Weibull-Deaths')
histdata_DEA_W = get(h_DEA_W2(1),'XData');    % Get Histogram Data
redcurve_DEA_W = get(h_DEA_W2(2),'YData');    % Get Fit Data

histctrs_DEA_W=mean(histdata_DEA_W);                      % Mean Of Bin Edges
redcurve2_DEA_W=mean(reshape(redcurve_DEA_W,2,[]));       % Mean Of Bin Edges Fit
fit_err_DEA_W=histctrs_DEA_W-redcurve2_DEA_W;             % Error
SSE_DEA_W=sum(fit_err_DEA_W.^2);                          % Sum-Squared Error
MSE_DEA_W=mean(fit_err_DEA_W.^2);                         % Mean-Squared-Error
RMSE_DEA_W=sqrt(MSE_DEA_W);                               % Root-Mean-Squared-Error
fprintf('Weibull-Deaths:Root of Mean-Squared-Error=%e\n\n',RMSE_DEA_W)


% ******HalfNormal******
pd_DEA_H1=fitdist(UK_D,'HalfNormal');                % pd:propability distribution
[h_DEA_H1,p_DEA_H1]=chi2gof(UK_D,'CDF',pd_DEA_H1);   % 1o krithrio me chi2gof alla poly mikres p-values
fprintf('HalfNormal-Deaths: h=%f,p=%f\n',h_DEA_H1,p_DEA_H1)

figure(24)
h_DEA_H2=histfit(UK_D,bins,'HalfNormal');
title('HalfNormal-Deaths')
histdata_DEA_H=get(h_DEA_H2(1),'XData');    % Get Histogram Data
redcurve_DEA_H=get(h_DEA_H2(2),'YData');    % Get Fit Data

histctrs_DEA_H=mean(histdata_DEA_H);                      % Mean Of Bin Edges
redcurve2_DEA_H=mean(reshape(redcurve_DEA_H,2,[]));       % Mean Of Bin Edges Fit
fit_err_DEA_H=histctrs_DEA_H-redcurve2_DEA_H;             % Error
SSE_DEA_H=sum(fit_err_DEA_H.^2);                          % Sum-Squared Error
MSE_DEA_H=mean(fit_err_DEA_H.^2);                         % Mean-Squared-Error
RMSE_DEA_H=sqrt(MSE_DEA_H);                               % Root-Mean-Squared-Error
fprintf('HalfNormal-Deaths:Root of Mean-Squared-Error=%e\n\n',RMSE_DEA_H)


% ******KERNEL******
pd_DEA_K1=fitdist(UK_D,'Kernel','Kernel','epanechnikov'); % pd:propability distribution
[h_DEA_K1,p_DEA_K1]=chi2gof(UK_D,'CDF',pd_DEA_K1);        % 1o krithrio me chi2gof alla poly mikres p-values
fprintf('Kernel-Deaths: h=%f,p=%f\n',h_DEA_K1,p_DEA_K1) 

figure(25)
h_DEA_K2=histfit(UK_D,bins,'Kernel');
title('Kernel-Deaths')
histdata_DEA_K = get(h_DEA_K2(1),'XData');    % Get Histogram Data
redcurve_DEA_K = get(h_DEA_K2(2),'YData');    % Get Fit Data

histctrs_DEA_K=mean(histdata_DEA_K);                      % Mean Of Bin Edges
redcurve2_DEA_K=mean(reshape(redcurve_DEA_K,2,[]));       % Mean Of Bin Edges Fit
fit_err_DEA_K=histctrs_DEA_K-redcurve2_DEA_K;             % Error
SSE_DEA_K=sum(fit_err_DEA_K.^2);                          % Sum-Squared Error
MSE_DEA_K=mean(fit_err_DEA_K.^2);                         % Mean-Squared-Error
RMSE_DEA_K=sqrt(MSE_DEA_K);                               % Root-Mean-Squared-Error
fprintf('Kernel-Deaths:Root of Mean-Squared-Error=%e\n\n',RMSE_DEA_K)

%% SYMPERASMATA-SXOLIA
% Sthn periptwsh twn CASES kathws se oles tis katanomes o elegxos X^2
% ebgaze aporripsh (h=1) kai poly mikrh pithanothta se ola ektos ths KERNEL, akolouthise elegxos me
% to Mean-Squared-Error. To mikrotero sfalma brethhke sthn katanomh ths
% KERNEL (h opoia htan kai h monh pou ebgaze h=0 me perissotera dedomena
% kata thn enarxh tou kymatos, ta opoia omws meta afairethhkan giati yphrxan mhdenikes
% times stis antistoixes sthles twn DEATHS).

% Sthn periptwsh twn DEATHS h monh katanomh pou bgazei mhdeniki ypothesh
% einai h KERNEL, h opoia bgazei kai arketa megalh pithanothta (p=0.61) se
% sxesi me oles tis ypoloipes. Epomenws gia tous thanatous den xreiazotan
% apairaithta o Mean-Squared-Error elegxos. Parola ayta egine kai edeixe
% oti to sfalma einai mikrotero sthn HalfNormal, alla poly konta sto sfalma
% ths KERNEL.

% Epomenws kalyterh prosarmogh gia CASES kai DEATHS yparxei sthn KERNEL.