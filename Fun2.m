function [hC,pC,hD,pD]=fun2_2(country,country_confirmed,country_deaths)
pdC=fitdist(country_confirmed,'Kernel','Kernel','epanechnikov');
[hC,pC]=chi2gof(country_confirmed,'CDF',pdC);

pdD=fitdist(country_deaths,'Kernel'); %pd:propability distribution
[hD,pD]=chi2gof(country_deaths,'CDF',pdD);
end 
