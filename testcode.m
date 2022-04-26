%% Accessing data
addpath('C:\Users\tommy\Downloads\pv_data_2020.csv');
addpath('C:\Users\tommy\Downloads');
import bordersm.*
import cmocean.*
filename = 'pv_open_2020.csv';
SolarResourcesData = readtable(filename);
filename = 'perezANN.csv';
MonthlyDNI = readtable(filename);
MonthlyDNI.FID=[];
MonthlyDNI.gid=[];
%% Creating variables
SolarResources = table2array(SolarResourcesData);
Monthly = table2array(MonthlyDNI);
latitudes = SolarResources(:,6);
longitudes = SolarResources(:,7);
irradiance = SolarResources(:,3);
pv_capacity = SolarResources(:,4);
Area = SolarResources(:,5);

latMonth = Monthly(:,4);
lonMonth = Monthly(:,3);
AnnDNI = Monthly(:,17);
JanDNI = Monthly(:,5);
JulyDNI = Monthly(:,11);
% latsround = 25:0.2:50;
% %longsround = 
%% Figures
% s = shaperead('cb_2018_us_nation_20m.shx');
% in = inpolygon(lonMonth,latMonth,s.X,s.Y);
% comment these out and in when needed
%irradiance
figure(1); clf
worldmap([23 55],[-130 -65]);
geoshow('landareas.shp','FaceColor','white')
hold on
% geoshow(latitudes,longitudes,'DisplayType','Point','Marker','.')
scatterm(latitudes,longitudes,5,irradiance,'filled')
colorbar
cmocean('matter');
ylabel(colorbar,'Global Horizontal Irradiance (GHI)')
title('US Map of Global Horizontal Irradiance in 2020')
bordersm('continental us','k')
hold off
%scatterm       1:10:end
%capacity
figure(2); clf
worldmap([23 55],[-130 -65]);
geoshow('landareas.shp','FaceColor','white')
hold on
scatterm(latitudes,longitudes,5,pv_capacity,'filled')
colorbar
cmocean('algae');
ylabel(colorbar,'Capacity (MW)')
title('US Map of Photovoltaic Capacity in 2020')
bordersm('continental us','k')
%area
figure(3); clf
worldmap([23 55],[-130 -65]);
geoshow('landareas.shp','FaceColor','white')
hold on
scatterm(latitudes,longitudes,5,Area,'filled')
colorbar
cmocean('tempo');
ylabel(colorbar,'Area (km^2)')
title('US Map of Photovoltaic Array Area in 2020')
bordersm('continental us','k')
%JanDNI
figure(4); clf
worldmap([23 55],[-130 -65]);
geoshow('landareas.shp','FaceColor','white')
JanDNI(~in)=NaN;
hold on
scatterm(latMonth,lonMonth,5,JanDNI,'filled')
colorbar
cmocean('matter');
ylabel(colorbar,'DNI')
title('US Map of Average Annual DNI in January')
bordersm('continental us','k')
%JulyDNI
figure(5); clf
worldmap([23 55],[-130 -65]);
geoshow('landareas.shp','FaceColor','white')
JulyDNI(~in)=NaN;
hold on
scatterm(latMonth,lonMonth,5,JulyDNI,'filled')
colorbar
cmocean('matter');
ylabel(colorbar,'DNI')
title('US Map of Average Annual DNI in July')
bordersm('continental us','k')

%% 
%Annual Dni
figure(6); clf
worldmap([23 55],[-130 -65]);
geoshow('landareas.shp','FaceColor','white')
AnnDNI(~in)=NaN;
hold on
scatterm(latMonth,lonMonth,5,AnnDNI,'filled')
colorbar
cmocean('matter');
ylabel(colorbar,'DNI')
title('US Map of Average Annual DNI in ')
bordersm('continental us','k')

