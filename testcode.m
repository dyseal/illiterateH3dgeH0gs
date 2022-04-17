%% Accessing data
addpath('C:\Users\tommy\Downloads\pv_data_2020.csv');
import bordersm.*
import cmocean.*
filename = 'pv_open_2020.csv';
SolarResourcesData = readtable(filename);
%% Creating variables
SolarResources = table2array(SolarResourcesData);
latitudes = SolarResources(:,6);
longitudes = SolarResources(:,7);
irradiance = SolarResources(:,3);
pv_capacity = SolarResources(:,4);
Area = SolarResources(:,5);
% latsround = 25:0.2:50;
% %longsround = 
%% Figures
%irradiance
figure(1); clf
worldmap([23 55],[-130 -65]);
geoshow('landareas.shp','FaceColor','white')
hold on
% geoshow(latitudes,longitudes,'DisplayType','Point','Marker','.')
scatterm(latitudes,longitudes,5,irradiance,'filled')
colorbar
cmocean('-matter');
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