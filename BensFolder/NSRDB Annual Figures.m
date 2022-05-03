% Must be run AFTER running lines 1-139 of 'BenNSRDB_CODE.m'
%% Array of lat/lon for corresponding variable (for ANNUAL avgs/modes)
interval = length(daily_lat_lon(:,1:2))/365;
a = 1;
b=365;
ann_lat_lon = NaN(interval,2);
for j=1:length(ann_lat_lon)
    ann_lat_lon(j,1:2) = mean(daily_lat_lon(a:b,1:2));
    a=a+365;
    b=b+365;
end

%% Creating 2020 DHI array
interval = length(avgdaily_DHI)/365;
a = 1;
b=365;
avgann_DHI = NaN(interval,1);
for j=1:length(avgann_DHI)
    avgann_DHI(j) = mean(avgdaily_DHI(a:b,1));
    a=a+365;
    b=b+365;
end
%% 2020 DNI
a = 1;
b=365;
interval = length(avgdaily_DNI)/365;
ann_DNI = NaN(interval,1);
for j=1:length(ann_DNI)
    ann_DNI(j) = mean(avgdaily_DNI(a:b,1));
    a=a+365;
    b=b+365;
end
%% 2020 GHI
a = 1;
b=365;
interval = length(avgdaily_GHI)/365;
ann_GHI = NaN(interval,1);
for j=1:length(ann_GHI)
    ann_GHI(j) = mean(avgdaily_GHI(a:b,1));
    a=a+365;
    b=b+365;
end
%% 2020 GHI clear sky
a = 1;
b=365;
interval = length(avgdaily_GHI_clearsky)/365;
ann_GHIclsk = NaN(interval,1);
for j=1:length(ann_GHIclsk)
    ann_GHIclsk(j) = mean(avgdaily_GHI_clearsky(a:b,1));
    a=a+365;
    b=b+365;
end
%% 2020 dew point
a = 1;
b=365;
interval = length(avgdaily_dewpt)/365;
ann_dewpt = NaN(interval,1);
for j=1:length(ann_dewpt)
    ann_dewpt(j) = mean(avgdaily_dewpt(a:b,1));
    a=a+365;
    b=b+365;
end
%% 2020 solar zenith angle
a = 1;
b=365;
interval = length(avgdaily_solzen)/365;
ann_solzen = NaN(interval,1);
for j=1:length(ann_solzen)
    ann_solzen(j) = mean(avgdaily_solzen(a:b,1));
    a=a+365;
    b=b+365;
end
%% 2020 surface albedo 
a = 1;
b=365;
interval = length(avgdaily_albedo)/365;
ann_albedo= NaN(interval,1);
for j=1:length(ann_albedo)
    ann_albedo(j) = mean(avgdaily_albedo(a:b,1));
    a=a+365;
    b=b+365;
end
%% 2020 humidity 
a = 1;
b=365;
interval = length(avgdaily_humidity)/365;
ann_humidity= NaN(interval,1);
for j=1:length(ann_humidity)
    ann_humidity(j) = mean(avgdaily_humidity(a:b,1));
    a=a+365;
    b=b+365;
end
%% 2020 temp
a = 1;
b=365;
interval = length(avgdaily_temp)/365;
ann_temp= NaN(interval,1);
for j=1:length(ann_temp)
    ann_temp(j) = mean(avgdaily_temp(a:b,1));
    a=a+365;
    b=b+365;
end
%% 2020 cloud type
a = 1;
b=365;
interval = length(dailymode_cloudtype)/365;
ann_cloudtype= NaN(interval,1);
for j=1:length(ann_cloudtype)
    ann_cloudtype(j) = mode(dailymode_cloudtype(a:b,1));
    a=a+365;
    b=b+365;
end




