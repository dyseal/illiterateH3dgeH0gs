%% Solar Supply Curve and Monthly Irradiance Figure Creation
% This code accesses and initializes variables from the Solar Supply Curve
% and Monthly Irradiance data sets. It then plots this data on a map of the
% Continental US. Datasets used are pv_data_2020.csv and perezANN.csv

%% Accessing data
%add your own path below
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
capacity_factor = SolarResources(:,2);
Area = SolarResources(:,5);
generation = (pv_capacity*24*365).*capacity_factor;
latMonth = Monthly(:,4);
lonMonth = Monthly(:,3);
AnnDNI = Monthly(:,17);
JanDNI = Monthly(:,5);
JulyDNI = Monthly(:,11);
%% Figures
s = shaperead('cb_2018_us_nation_20m.shx');
in = inpolygon(lonMonth,latMonth,s.X,s.Y);
% comment these out and in when needed, ignores data outside the
% continental us
%irradiance
figure(1); clf
worldmap([23 55],[-130 -65]);
geoshow('landareas.shp','FaceColor','white')
hold on
scatterm(latitudes,longitudes,5,irradiance,'filled')
colorbar
cmocean('matter');
ylabel(colorbar,'Global Horizontal Irradiance (kWh/m^2/day)')
title('US Map of Global Horizontal Irradiance in 2020')
bordersm('continental us','k')
ax = gca;
ax.FontSize = 20;
hold off
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
ax = gca;
ax.FontSize = 20;
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
ax = gca;
ax.FontSize = 20;
%JanDNI
figure(4); clf
worldmap([23 55],[-130 -65]);
geoshow('landareas.shp','FaceColor','white')
JanDNI(~in)=NaN;
hold on
scatterm(latMonth,lonMonth,5,JanDNI,'filled')
colorbar
cmocean('matter');
ylabel(colorbar,'Direct Normal Irradiance (kWh/m^2/day)')
title('US Map of Average Annual Direct Normal Irradiance in January from 1998-2005')
bordersm('continental us','k')
ax = gca;
ax.FontSize = 20;
caxis([800,10000]);
%JulyDNI
figure(5); clf
worldmap([23 55],[-130 -65]);
geoshow('landareas.shp','FaceColor','white')
JulyDNI(~in)=NaN;
hold on
scatterm(latMonth,lonMonth,5,JulyDNI,'filled')
colorbar
cmocean('matter');
ylabel(colorbar,'Direct Normal Irradiance (kWh/m^2/day)')
title('US Map of Average Annual Direct Normal Irradiance in July from 1998-2005')
bordersm('continental us','k')
ax = gca;
ax.FontSize = 20;
caxis([800,10000]);
%capacity
figure(7); clf
worldmap([23 55],[-130 -65]);
geoshow('landareas.shp','FaceColor','white')
hold on
scatterm(latitudes,longitudes,5,capacity_factor,'filled')
colorbar
cmocean('tempo');
ylabel(colorbar,'Capacity Factor')
title('US Map of Capacity Factor in 2020')
bordersm('continental us','k')
ax = gca;
ax.FontSize = 20;
%Annual Dni
figure(6); clf
worldmap([23 55],[-130 -65]);
geoshow('landareas.shp','FaceColor','white')
AnnDNI(~in)=NaN;
hold on
scatterm(latMonth,lonMonth,5,AnnDNI,'filled')
colorbar
cmocean('matter');
ylabel(colorbar,'Direct Normal Irradiance (kWh/m^2/day)')
title('US Map of Average Annual Direct Normal Irradiance from 1998-2005')
bordersm('continental us','k')
ax = gca;
ax.FontSize = 20;
caxis([800,10000]);
% generation
figure(7); clf
worldmap([23 55],[-130 -65]);
geoshow('landareas.shp','FaceColor','white')
hold on
scatterm(latitudes,longitudes,5,generation,'filled')
colorbar
cmocean('algae');
ylabel(colorbar,'Energy Generation (mWh)')
title('US Map of Photovoltaic Energy Generation in 2020')
bordersm('continental us','k')
ax = gca;
ax.FontSize = 20;
