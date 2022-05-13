%% Runtime = 3-7 minutes (15 minutes for slow CPU)
%% LOADING DATA and VARIABLES
%addpath('C:\Users\tommy\Downloads\pv_data_2020.csv');
%addpath('C:\Users\tommy\Downloads');
addpath('C:\Users\Ben Alexander\OneDrive\Desktop\BA_NSRDB_Expl');
load('NAD.mat');
import bordersm.*
import cmocean.*
%% PRELIMINARY DATA EXPLORATION: Creating variables
%%
% Indexing 
startODind=find(NAD(1:41665,4)==0);
EODind=find(NAD(1:41667,4)==23);
FullDayind = startODind(1:1736,1);
FullDayind(:,2) = EODind(:,1);

%% 
FullDaySortedind = reshape(FullDayind,[(1736*2),1]);
FullDaySortedind = sort(FullDaySortedind);

%% Array of yr-mo-day for corresponding variables (for DAILY avgs/modes)
interval = length(NAD(:,1:3))/24;
a = 1;
b=24;
daily_timeind = NaN(interval,3);
for j=1:length(daily_timeind)
    daily_timeind(j,1:3) = mean(NAD(a:b,1:3));
    a=a+24;
    b=b+24;
end
%% Array of lat/lon for corresponding variable (for DAILY avgs/modes)
interval = length(NAD(:,16:17))/24;
a = 1;
b=24;
daily_lat_lon = NaN(interval,2);
for j=1:length(daily_lat_lon)
    daily_lat_lon(j,1:2) = mean(NAD(a:b,16:17));
    a=a+24;
    b=b+24;
end

%% Creating DHI array
interval = length(NAD(:,6))/24;
a = 1;
b=24;
avgdaily_DHI = NaN(interval,1);
for j=1:length(avgdaily_DHI)
    avgdaily_DHI(j) = mean(NAD(a:b,6));
    a=a+24;
    b=b+24;
end

%% Creating DNI array
interval = length(NAD(:,7))/24;
a = 1;
b=24;
avgdaily_DNI = NaN(interval,1);
for j=1:length(avgdaily_DNI)
    avgdaily_DNI(j) = mean(NAD(a:b,7));
    a=a+24;
    b=b+24;
end
%% Creating avg daily GHI array
interval = length(NAD(:,8))/24;
a = 1;
b=24;
avgdaily_GHI = NaN(interval,1);
for j=1:length(avgdaily_GHI)
    avgdaily_GHI(j) = mean(NAD(a:b,8));
    a=a+24;
    b=b+24;
end

%% Creating avg daily GHI clearsky array (reflects irradiance INDEPENDENT of cloud interference)
interval = length(NAD(:,9))/24;
a = 1;
b=24;
avgdaily_GHI_clearsky = NaN(interval,1);
for j=1:length(avgdaily_GHI_clearsky)
    avgdaily_GHI_clearsky(j) = mean(NAD(a:b,9));
    a=a+24;
    b=b+24;
end

%% Creating avg daily dew point array
interval = length(NAD(:,11))/24;
a = 1;
b=24;
avgdaily_dewpt = NaN(interval,1);
for j=1:length(avgdaily_dewpt)
    avgdaily_dewpt(j) = mean(NAD(a:b,11));
    a=a+24;
    b=b+24;
end
%% Creating avg daily solar zenith angle array
interval = length(NAD(:,12))/24;
a = 1;
b=24;
avgdaily_solzen = NaN(interval,1);
for j=1:length(avgdaily_solzen)
    avgdaily_solzen(j) = mean(NAD(a:b,12));
    a=a+24;
    b=b+24;
end
%% Creating avg daily surf. albedo array
interval = length(NAD(:,13))/24;
a = 1;
b=24;
avgdaily_albedo = NaN(interval,1);
for j=1:length(avgdaily_albedo)
    avgdaily_albedo(j) = mean(NAD(a:b,13));
    a=a+24;
    b=b+24;
end
%% Creating avg daily humidity array
interval = length(NAD(:,14))/24;
a = 1;
b=24;
avgdaily_humidity = NaN(interval,1);
for j=1:length(avgdaily_humidity)
    avgdaily_humidity(j) = mean(NAD(a:b,14));
    a=a+24;
    b=b+24;
end
%% Creating avg daily temp array
interval = length(NAD(:,15))/24;
a = 1;
b=24;
avgdaily_temp = NaN(interval,1);
for j=1:length(avgdaily_temp)
    avgdaily_temp(j) = mean(NAD(a:b,15));
    a=a+24;
    b=b+24;
end
%% Creating mode of cloud type per day
interval = length(NAD(:,10))/24;
a = 1;
b=24;
dailymode_cloudtype = NaN(interval,1);
for j=1:length(dailymode_cloudtype)
    dailymode_cloudtype(j) = mode(NAD(a:b,10));
    a=a+24;
    b=b+24;
end

%% PRELIMINARY DATA EXPLORATION: Creating Contour Map Figures
figure(1); clf
worldmap([23 55],[-130 -65]);
geoshow('landareas.shp','FaceColor','white')
hold on
% geoshow(lat_lon(:,1),lat_lon(:,2),'DisplayType','Point','Marker','.')

scatterm(daily_lat_lon(:,1),daily_lat_lon(:,2),500,avgdaily_GHI,'filled')
colorbar
cmocean('matter');
ylabel(colorbar,'Global Horizontal Irradiance (kWh/m^2/day)')
title('US Map of Global Horizontal Irradiance in 2020')
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

scatterm(daily_lat_lon(:,1),daily_lat_lon(:,2),500,avgdaily_GHI_clearsky,'filled')
colorbar
cmocean('matter');
ylabel(colorbar,'Global Horizontal Irradiance (kWh/m^2/day)')
title('US Map of GHI (clear sky normalized) in 2020')
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

scatterm(daily_lat_lon(:,1),daily_lat_lon(:,2),500,dailymode_cloudtype,'filled')
colorbar('Ticks',[0,1,2,3,4,5,6,7,8,9,10,11,12],'TickLabels',{'Clear','Clear (probable)','Fog','Water','Super-cooled water','Mixed','Opaque ice','Cirrus','Overlapping','Overshooting','Unknown','Dust','Smoke'})
cmocean('matter');
ylabel('Cloud Type')
title('US Map of Average Cloud Type in 2020')
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

scatterm(daily_lat_lon(:,1),daily_lat_lon(:,2),500,avgdaily_DNI,'filled')
colorbar
cmocean('matter');
ylabel(colorbar,'Direct Normal Irradiance (kWh/m^2/day)')
title('US Map of Direct Normal Irradiance in 2020')
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

scatterm(daily_lat_lon(:,1),daily_lat_lon(:,2),500,avgdaily_humidity,'filled')
colorbar
cmocean('matter');
ylabel(colorbar,'Humidity (%)')
title('US Map of Humidity in 2020')
bordersm('continental us', 'k','linewidth',0.05)
ax = gca;
ax.FontSize = 20;
hold off