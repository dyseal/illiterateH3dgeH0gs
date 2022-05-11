% Must be run AFTER running lines 1-139 of 'BenNSRDB_CODE.m' °
%% Array of January lat/lon for corresponding variable (for January avgs/modes)
interval = round(length(daily_lat_lon)/365);
a = 1;
b=31;
Jan_lat_lon = NaN(interval,2);
for j=1:length(Jan_lat_lon)
    Jan_lat_lon(j,1:2) = mean(daily_lat_lon(a:b,1:2));
    a=a+365;
    b=b+365;
end
%% Array of July lat/lon for corresponding variable (for January avgs/modes)(note: values of Jan_lat_lon = values of Jul_lat_lon)
interval = round(length(daily_lat_lon)/365);
a = 182;
b=212;
Jul_lat_lon = NaN(interval,2);
for j=1:length(Jul_lat_lon)
    Jul_lat_lon(j,1:2) = mean(daily_lat_lon(a:b,1:2));
    a=a+365;
    b=b+365;
end

%% Creating Jan DHI array
a = 1;
b=31;
interval = round(length(avgdaily_DHI)/365);
Jan_DHI = NaN(interval,1);
for j=1:length(Jan_DHI)
    Jan_DHI(j) = mean(avgdaily_DHI(a:b,1));
    a=a+365;
    b=b+365;
end
%% Creating July DHI array 
a = 182;
b=212;
interval = round(length(avgdaily_DHI)/365);
Jul_DHI = NaN(interval,1);
for j=1:length(Jul_DHI)
    Jul_DHI(j) = mean(avgdaily_DHI(a:b,1));
    a=a+365;
    b=b+365;
end

%% Creating Jan DNI array
a = 1;
b=31;
interval = round(length(avgdaily_DNI)/365);
Jan_DNI = NaN(interval,1);
for j=1:length(Jan_DNI)
    Jan_DNI(j) = mean(avgdaily_DNI(a:b,1));
    a=a+365;
    b=b+365;
end
%% Creating July DNI array 
a = 182;
b=212;
interval = round(length(avgdaily_DNI)/365);
Jul_DNI = NaN(interval,1);
for j=1:length(Jul_DNI)
    Jul_DNI(j) = mean(avgdaily_DNI(a:b,1));
    a=a+365;
    b=b+365;
end

%% Creating Jan GHI array
a = 1;
b=31;
interval = round(length(avgdaily_GHI)/365);
Jan_GHI = NaN(interval,1);
for j=1:length(Jan_GHI)
    Jan_GHI(j) = mean(avgdaily_GHI(a:b,1));
    a=a+365;
    b=b+365;
end
%% Creating July GHI array 
a = 182;
b=212;
interval = round(length(avgdaily_GHI)/365);
Jul_GHI = NaN(interval,1);
for j=1:length(Jul_GHI)
    Jul_GHI(j) = mean(avgdaily_GHI(a:b,1));
    a=a+365;
    b=b+365;
end
%% Creating Jan GHI clearsky array
a = 1;
b=31;
interval = round(length(avgdaily_GHI_clearsky)/365);
Jan_GHIclsk = NaN(interval,1);
for j=1:length(Jan_GHIclsk)
    Jan_GHIclsk(j) = mean(avgdaily_GHI_clearsky(a:b,1));
    a=a+365;
    b=b+365;
end
%% Creating July GHI clearsky array 
a = 182;
b=212;
interval = round(length(avgdaily_GHI_clearsky)/365);
Jul_GHIclsk = NaN(interval,1);
for j=1:length(Jul_GHIclsk)
    Jul_GHIclsk(j) = mean(avgdaily_GHI_clearsky(a:b,1));
    a=a+365;
    b=b+365;
end
%% Creating Jan dew point array
a = 1;
b=31;
interval = round(length(avgdaily_dewpt)/365);
Jan_dewpt = NaN(interval,1);
for j=1:length(Jan_dewpt)
    Jan_dewpt(j) = mean(avgdaily_dewpt(a:b,1));
    a=a+365;
    b=b+365;
end
%% Creating July dew point array 
a = 182;
b=212;
interval = round(length(avgdaily_dewpt)/365);
Jul_dewpt = NaN(interval,1);
for j=1:length(Jul_dewpt)
    Jul_dewpt(j) = mean(avgdaily_dewpt(a:b,1));
    a=a+365;
    b=b+365;
end
%% Creating Jan solar zenith array
a = 1;
b=31;
interval = round(length(avgdaily_solzen)/365);
Jan_solzen = NaN(interval,1);
for j=1:length(Jan_solzen)
    Jan_solzen(j) = mean(avgdaily_solzen(a:b,1));
    a=a+365;
    b=b+365;
end
%% Creating July solar zenith angle array 
a = 182;
b=212;
interval = round(length(avgdaily_solzen)/365);
Jul_solzen = NaN(interval,1);
for j=1:length(Jul_solzen)
    Jul_solzen(j) = mean(avgdaily_solzen(a:b,1));
    a=a+365;
    b=b+365;
end
%% Creating Jan surface albedo array
a = 1;
b=31;
interval = round(length(avgdaily_albedo)/365);
Jan_albedo= NaN(interval,1);
for j=1:length(Jan_albedo)
    Jan_albedo(j) = mean(avgdaily_albedo(a:b,1));
    a=a+365;
    b=b+365;
end
%% Creating July surface albedo array 
a = 182;
b=212;
interval = round(length(avgdaily_albedo)/365);
Jul_albedo = NaN(interval,1);
for j=1:length(Jul_albedo)
    Jul_albedo(j) = mean(avgdaily_albedo(a:b,1));
    a=a+365;
    b=b+365;
end
%% Creating Jan humidity array
a = 1;
b=31;
interval = round(length(avgdaily_humidity)/365);
Jan_humidity= NaN(interval,1);
for j=1:length(Jan_humidity)
    Jan_humidity(j) = mean(avgdaily_humidity(a:b,1));
    a=a+365;
    b=b+365;
end
%% Creating July humidity array 
a = 182;
b=212;
interval = round(length(avgdaily_humidity)/365);
Jul_humidity = NaN(interval,1);
for j=1:length(Jul_humidity)
    Jul_humidity(j) = mean(avgdaily_humidity(a:b,1));
    a=a+365;
    b=b+365;
end
%% Creating Jan temp array
a = 1;
b=31;
interval = round(length(avgdaily_temp)/365);
Jan_temp= NaN(interval,1);
for j=1:length(Jan_temp)
    Jan_temp(j) = mean(avgdaily_temp(a:b,1));
    a=a+365;
    b=b+365;
end
%% Creating July temp array 
a = 182;
b=212;
interval = round(length(avgdaily_temp)/365);
Jul_temp = NaN(interval,1);
for j=1:length(Jul_temp)
    Jul_temp(j) = mean(avgdaily_temp(a:b,1));
    a=a+365;
    b=b+365;
end

%% <<<FIGURES>>>
figure(1); clf
worldmap([23 55],[-130 -65]);
geoshow('landareas.shp','FaceColor','white')
hold on
% geoshow(lat_lon(:,1),lat_lon(:,2),'DisplayType','Point','Marker','.')

scatterm(Jan_lat_lon(:,1),Jan_lat_lon(:,2),500,Jan_GHI,'filled')
colorbar
cmocean('matter');
ylabel(colorbar,'Global Horizontal Irradiance (?W/m^2/day?)')
title('US Map of Global Horizontal Irradiance in January 2020')
bordersm('continental us', 'k','linewidth',0.05)
ax = gca;
ax.FontSize = 20;
hold off

%% 
figure(2); clf
worldmap([23 55],[-130 -65]);
geoshow('landareas.shp','FaceColor','white')
hold on
% geoshow(lat_lon(:,1),lat_lon(:,2),'DisplayType','Point','Marker','.')

scatterm(Jan_lat_lon(:,1),Jan_lat_lon(:,2),500,Jul_GHI,'filled')
colorbar
cmocean('matter');
ylabel(colorbar,'Global Horizontal Irradiance (?W/m^2/day?)')
title('US Map of Global Horizontal Irradiance in July 2020')
bordersm('continental us', 'k','linewidth',0.05)
ax = gca;
ax.FontSize = 20;
hold off
%% 
figure(3); clf
worldmap([23 55],[-130 -65]);
geoshow('landareas.shp','FaceColor','white')
hold on
% geoshow(lat_lon(:,1),lat_lon(:,2),'DisplayType','Point','Marker','.')

scatterm(Jan_lat_lon(:,1),Jan_lat_lon(:,2),500,Jan_GHIclsk,'filled')
cmocean('matter');
ylabel(colorbar,'Global Horizontal Irradiance (?W/m^2/day)')
title('US Map of Global Horizontal Irradiance (clearsky normalized) in January 2020')
bordersm('continental us', 'k','linewidth',0.05)
ax = gca;
ax.FontSize = 20;
hold off
%% 
figure(4); clf
worldmap([23 55],[-130 -65]);
geoshow('landareas.shp','FaceColor','white')
hold on
% geoshow(lat_lon(:,1),lat_lon(:,2),'DisplayType','Point','Marker','.')

scatterm(Jan_lat_lon(:,1),Jan_lat_lon(:,2),500,Jul_GHIclsk,'filled')
cmocean('matter');
ylabel(colorbar,'Global Horizontal Irradiance (kWh/m^2/day)')
title('US Map of Global Horizontal Irradiance (clearsky normalized) in July 2020')
bordersm('continental us', 'k','linewidth',0.05)
ax = gca;
ax.FontSize = 20;
hold off
%% 
figure(5); clf
worldmap([23 55],[-130 -65]);
geoshow('landareas.shp','FaceColor','white')
hold on
% geoshow(lat_lon(:,1),lat_lon(:,2),'DisplayType','Point','Marker','.')

scatterm(Jan_lat_lon(:,1),Jan_lat_lon(:,2),500,Jan_temp,'filled')
colorbar
cmocean('matter');
ylabel(colorbar,'Temperature (°C)')
title('Average Temperature for January in 2020')
bordersm('continental us', 'k','linewidth',0.05)
ax = gca;
ax.FontSize = 20;
hold off
%% 
figure(6); clf
worldmap([23 55],[-130 -65]);
geoshow('landareas.shp','FaceColor','white')
hold on
% geoshow(lat_lon(:,1),lat_lon(:,2),'DisplayType','Point','Marker','.')

scatterm(Jan_lat_lon(:,1),Jan_lat_lon(:,2),500,Jul_temp,'filled')
colorbar
cmocean('matter');
ylabel(colorbar,'Temperature (°C)')
title('Average Temperature for July in 2020')
bordersm('continental us', 'k','linewidth',0.05)
ax = gca;
ax.FontSize = 20;
hold off
%% 
figure(7); clf
worldmap([23 55],[-130 -65]);
geoshow('landareas.shp','FaceColor','white')
hold on
% geoshow(lat_lon(:,1),lat_lon(:,2),'DisplayType','Point','Marker','.')

scatterm(Jan_lat_lon(:,1),Jan_lat_lon(:,2),500,Jan_humidity,'filled')
colorbar
cmocean('matter');
ylabel(colorbar,'Humidity (%)')
title('Average Humidity for January in 2020')
bordersm('continental us', 'k','linewidth',0.05)
ax = gca;
ax.FontSize = 20;
hold off
%% 
figure(8); clf
worldmap([23 55],[-130 -65]);
geoshow('landareas.shp','FaceColor','white')
hold on
% geoshow(lat_lon(:,1),lat_lon(:,2),'DisplayType','Point','Marker','.')

scatterm(Jan_lat_lon(:,1),Jan_lat_lon(:,2),500,Jul_humidity,'filled')
colorbar
cmocean('matter');
ylabel(colorbar,'Humidity (%)')
title('Average Humidity for July in 2020')
bordersm('continental us', 'k','linewidth',0.05)
ax = gca;
ax.FontSize = 20;
hold off

%% 
figure(9); clf
worldmap([23 55],[-130 -65]);
geoshow('landareas.shp','FaceColor','white')
hold on
% geoshow(lat_lon(:,1),lat_lon(:,2),'DisplayType','Point','Marker','.')

scatterm(Jan_lat_lon(:,1),Jan_lat_lon(:,2),500,Jan_solzen,'filled')
colorbar
cmocean('matter');
ylabel(colorbar,'Solar Zenith Angle (Degrees)')
title('Average Solar Zenith Angle for January in 2020')
bordersm('continental us', 'k','linewidth',0.05)
ax = gca;
ax.FontSize = 20;
hold off
%% 
figure(10); clf
worldmap([23 55],[-130 -65]);
geoshow('landareas.shp','FaceColor','white')
hold on
% geoshow(lat_lon(:,1),lat_lon(:,2),'DisplayType','Point','Marker','.')

scatterm(Jan_lat_lon(:,1),Jan_lat_lon(:,2),500,Jul_solzen,'filled')
colorbar
cmocean('matter');
ylabel(colorbar,'Solar Zenith Angle (Degrees)')
title('Average Solar Zenith Angle for July in 2020')
bordersm('continental us', 'k','linewidth',0.05)
ax = gca;
ax.FontSize = 20;
hold off
%% 
figure(11); clf
worldmap([23 55],[-130 -65]);
geoshow('landareas.shp','FaceColor','white')
hold on
% geoshow(lat_lon(:,1),lat_lon(:,2),'DisplayType','Point','Marker','.')

scatterm(Jan_lat_lon(:,1),Jan_lat_lon(:,2),500,Jan_albedo,'filled')
colorbar
cmocean('matter');
ylabel(colorbar,'Surface Albedo (unitless)')
title('Average Surface Albedo Factor for January in 2020')
bordersm('continental us', 'k','linewidth',0.05)
ax = gca;
ax.FontSize = 20;
hold off
%% 
figure(12); clf
worldmap([23 55],[-130 -65]);
geoshow('landareas.shp','FaceColor','white')
hold on
% geoshow(lat_lon(:,1),lat_lon(:,2),'DisplayType','Point','Marker','.')

scatterm(Jan_lat_lon(:,1),Jan_lat_lon(:,2),500,Jul_albedo,'filled')
colorbar
cmocean('matter');
ylabel(colorbar,'Surface Albedo (unitless)')
title('Average Surface Albedo Factor for July in 2020')
bordersm('continental us', 'k','linewidth',0.05)
ax = gca;
ax.FontSize = 20;
hold off

%% Creating Averages for Hourly Humidity thru Jan
ind_all_Jans = find(NAD(:,2)==1);
all_Jans = NAD(ind_all_Jans,:);

ind_all_Juls = find(NAD(:,2)==7);
all_Juls = NAD(ind_all_Juls,:);
avghourly_Jan

interval = length(NAD(:,:))/744;
a = 1;
b=31;
Janhr_humidity = NaN(interval,1);
for j=1:length(Janhr_humidity)
    Janhr_humidity(j) = mean(NAD(a:b,14));
    a=a+31;
    b=b+31;
end

%% Plotting Time Series Figures
figure(13); clf
subplot(2,2,1);
x = [0:1:23];
y = JuTot_HT(
plot(x,y);
title('Hourly Humidity Through January')

subplot(2,2,2);
y = squeeze(PCO2_SW(59,28,:));
plot(x,y);
title('Seasonal SW at Bermuda')

subplot(2,2,3);
y = squeeze(PCO2_Bio(59,28,:));
plot(x,y);
title('Seasonal Bio-Physical Effect at Bermuda')

subplot(2,2,4);
y = squeeze(PCO2_Temp(59,28,:));
plot(x,y);
title('Seasonal Temperature Effect at Bermuda')
