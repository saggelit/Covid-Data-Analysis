function [hC,pC,hD,pD]=fun2_2(country,country_confirmed,country_deaths)
%fprintf('%s:\n',country)
pdC=fitdist(country_confirmed,'Kernel','Kernel','epanechnikov');
[hC,pC]=chi2gof(country_confirmed,'CDF',pdC);
%fprintf('Kernel-Cases: h=%f,p=%f\n',hC,pC)

pdD=fitdist(country_deaths,'Kernel'); %pd:propability distribution
[hD,pD]=chi2gof(country_deaths,'CDF',pdD);
%fprintf('Kernel-Deaths: h=%f,p=%f\n\n',hD,pD)
end 
