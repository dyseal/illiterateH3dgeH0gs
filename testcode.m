%% Accessing data
addpath('C:\Users\tommy\Downloads\pv_data_2020.csv');
import bordersm.*
filename = 'pv_open_2020.csv';
SolarResourcesData = readtable(filename);
%% Creating variables
SolarResources = table2array(SolarResourcesData);
latitudes = SolarResources(:,6);
longitudes = SolarResources(:,7);
latsround = 25:0.2:50;
%longsround = 
%% Figures
figure(1); clf
worldmap([23 55],[-130 -65]);
geoshow('landareas.shp','FaceColor','white')
hold on
geoshow(latitudes,longitudes,'DisplayType','Point','Marker','.')
bordersm('continental us','k')