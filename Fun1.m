function [con,deaths]=fun2_1(Covid_Confirmed,Covid_Deaths,country_code,f_day,l_day)
k=1;
for i=f_day:l_day
    if Covid_Confirmed(country_code,i)>0 && Covid_Deaths(country_code,i)>0
        con(k,1)=Covid_Confirmed(country_code,i);
        deaths(k,1)=Covid_Deaths(country_code,i);
        k=k+1;
    end
end    
end
