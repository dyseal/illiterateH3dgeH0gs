% https://www.weather.gov/arx/why_dewpoint_vs_humidity
%"The dew point is the temperature the air needs to be cooled to (at 
% constant pressure) in order to achieve a relative humidity (RH) of 100%.
% Many times, relative humidity can be misleading. For example, a 
% temperature of 30 and a dew point of 30 will give you a relative humidity
% of 100%, but a temperature of 80 and a dew point of 60 produces a 
% relative humidity of 50%." 
% We will evaluate irradiance against dew point in order to look at amount
% of moisture in the air, rather than relative moisture content (ie
% humidity).
%% %% NOTE: THIS CODE SHOULD TAKE ~3.5 MINUTES TO RUN
%% LOADING DATA and VARIABLES
%Run section if 'BenNSRDB_Code' AND 'NSRDBcode2_SolZenithFig' weren't yet ran
addpath('C:\Users\Ben Alexander\OneDrive\Desktop\BA_NSRDB_Expl');
%load('NAD.mat');
import bordersm.*
import cmocean.*


% Using arbitrary index to determine the datenum scale for each locations
% dataset, in this case we just chose the first location
init_ind = NAD(1,16:17)
ind1stloc = find(NAD(:,16)==init_ind(1,1) & NAD(:,17)==init_ind(1,2));
a = ind1stloc(1);
b = ind1stloc(length(ind1stloc));
TS = datenum(2020,NAD(a:b,2),NAD(a:b,3),NAD(a:b,4),NAD(a:b,5),0);
Begin = TS(1);
End = TS(length(ind1stloc));
%Array of lat/lon for corresponding variable
    interval = length(NAD(:,16:17))/24;
    a = 1;
    b=24;
    daily_lat_lon = NaN(interval,2);
    for j=1:length(daily_lat_lon)
        daily_lat_lon(j,1:2) = mean(NAD(a:b,16:17));
        a=a+24;
        b=b+24;
    end
%% Selecting 7 locations: 
figure(1); clf
worldmap([23 55],[-130 -65]);
geoshow('landareas.shp','FaceColor','white')
hold on
geoshow(daily_lat_lon(:,1),daily_lat_lon(:,2),'DisplayType','Point','Marker','.')

%We now have a map of the lcoations we have data for. Next will select 7
% points where we are interested in analyzing. For our project, we'll
% choose coordinates in the NW, NE, C, SE, S, and SW--to look at potential
% variation w/n California, we are choosing a location in the middle West
% Coast (to be defined as N_CA for "Northern Cali."), as well as the
% southern West Coast (to be defined as S_CA for "Southern Cali.").

% Using map coordinates to estimate lat & lon of 7 locations (REFERENCE FIGURE 1 (above)) 
% (geoshow = plots coordinates to double check that they are in the 
%  desired location): 

% NW: 45° < lat < 50° , -120° > lon > -125°
indNWrevis = find((NAD(:,16)>=45.00 & NAD(:,16)<=50.00) & (NAD(:,17)<=-120.00 & NAD(:,17)>=-125.00));
figure(2); clf
worldmap([23 55],[-130 -65]);
geoshow('landareas.shp','FaceColor','white')
hold on
geoshow(NAD(indNWrevis,16),NAD(indNWrevis,17),'DisplayType','Point','Marker','.')

% NE: 40° < lat < 47° , -70° > lon > -75°
indNErevis = find((NAD(:,16)>=40.00 & NAD(:,16)<=47.00) & (NAD(:,17)<=-70.00 & NAD(:,17)>=-75.00));
figure(2); clf
worldmap([23 55],[-130 -65]);
geoshow('landareas.shp','FaceColor','white')
hold on
geoshow(NAD(indNErevis,16),NAD(indNErevis,17),'DisplayType','Point','Marker','.')

% C: 35° < lat < 40° , -100° > lon > -102.5°
indCrevis = find((NAD(:,16)>=35.00 & NAD(:,16)<=40.00) & (NAD(:,17)<=-100.00 & NAD(:,17)>=-102.50));
figure(2); clf
worldmap([23 55],[-130 -65]);
geoshow('landareas.shp','FaceColor','white')
hold on
geoshow(NAD(indCrevis,16),NAD(indCrevis,17),'DisplayType','Point','Marker','.')

% SE: 25° < lat < 30° , -80° > lon > -85°
indSErevis = find((NAD(:,16)>=25.00 & NAD(:,16)<=30.00) & (NAD(:,17)<=-80.00 & NAD(:,17)>=-85.00));
figure(2); clf
worldmap([23 55],[-130 -65]);
geoshow('landareas.shp','FaceColor','white')
hold on
geoshow(NAD(indSErevis,16),NAD(indSErevis,17),'DisplayType','Point','Marker','.')

% S: 25° < lat < 30° , -95° > lon > -100°
indSrevis = find((NAD(:,16)>=25.00 & NAD(:,16)<=30.00) & (NAD(:,17)<=-95.00 & NAD(:,17)>=-100.00));
figure(2); clf
worldmap([23 55],[-130 -65]);
geoshow('landareas.shp','FaceColor','white')
hold on
geoshow(NAD(indSrevis,16),NAD(indSrevis,17),'DisplayType','Point','Marker','.')

% S_CA: 35° < lat < 40° , -117° > lon > -120°
indSCArevis = find((NAD(:,16)>=35.00 & NAD(:,16)<=40.00) & (NAD(:,17)<=-117.00 & NAD(:,17)>=-120.00));
figure(2); clf
worldmap([23 55],[-130 -65]);
geoshow('landareas.shp','FaceColor','white')
hold on
geoshow(NAD(indSCArevis,16),NAD(indSCArevis,17),'DisplayType','Point','Marker','.')

% N_CA: 40° < lat < 45° , -120° > lon > -125°
indNCArevis = find((NAD(:,16)>=40.00 & NAD(:,16)<=45.00) & (NAD(:,17)<=-120.00 & NAD(:,17)>=-125.00));
figure(2); clf
worldmap([23 55],[-130 -65]);
geoshow('landareas.shp','FaceColor','white')
hold on
geoshow(NAD(indNCArevis,16),NAD(indNCArevis,17),'DisplayType','Point','Marker','.')
%% Plotting Locations of Analyses
figure(1); clf
worldmap([23 55],[-130 -65]);
geoshow('landareas.shp','FaceColor','white')
hold on
geoshow(NAD(indNCArevis,16),NAD(indNCArevis,17),'DisplayType','Point','Marker','.');
geoshow(NAD(indSCArevis,16),NAD(indSCArevis,17),'DisplayType','Point','Marker','.');
geoshow(NAD(indSrevis,16),NAD(indSrevis,17),'DisplayType','Point','Marker','.');
geoshow(NAD(indSErevis,16),NAD(indSErevis,17),'DisplayType','Point','Marker','.');
geoshow(NAD(indCrevis,16),NAD(indCrevis,17),'DisplayType','Point','Marker','.');
geoshow(NAD(indNErevis,16),NAD(indNErevis,17),'DisplayType','Point','Marker','.');
geoshow(NAD(indNWrevis,16),NAD(indNWrevis,17),'DisplayType','Point','Marker','.');
title('Locations of Stations in the US','FontSize',20)
cmocean('matter');
bordersm('continental us','k','linewidth',0.5)
hold off
%% Exploring to get avgs 
YrSt = find(NAD(:,2)==1 & NAD(:,3)==1 & NAD(:,4)==0);
YrEnd = find(NAD(:,2)==12 & NAD(:,3)==31 & NAD(:,4)==23);
YrLength = YrEnd-YrSt;

%% Calc and plot for NW Dew Point
%Location 1 = Northwest US
NAD_forNW = NAD(indNWrevis,:);

YrLength=YrEnd(1);
LocAvgDewPoint = NaN(YrLength(1),1);
for j=1:YrLength(1);
k = [j:YrLength:length(NAD_forNW)]';
l = NAD_forNW(k,:);
LocAvgDewPoint(j)= mean(l(:,11));
end 

LocMovDewPoint = mean(LocAvgDewPoint);
y1 = LocAvgDewPoint;
figure(2); clf
plot(TS,y1)
hold on
datetick('x',6)
title('Mean Hourly Dew Point Over 1-year Period (2020) in Northwest US')
ylabel('Dew point (°C)')
xlabel('Time')
%xlim([Begin End])
datetick('x',6)


%%% Calc and plot for Irraiance
YrLength=YrEnd(1);
LocAvgDNI = NaN(YrLength(1),1);
for j=1:YrLength(1);
k = [j:YrLength:length(NAD_forNW)]';
l = NAD_forNW(k,:);
LocAvgDNI(j)= mean(l(:,7));
end


% First we plot the moving mean over 24 hour windows for the year:
movy1 = movmean(LocAvgDewPoint,24);
figure(3); clf
subplot(2,1,1)
plot(TS,movy1)
hold on
title('Daily Mean Dew Point Over 1-year Period (2020) in Northwest US')
ylabel('Dew point (°C)')
xlabel('Time')
%xlim([Begin End])
datetick('x',6)
hold on
movz1 = movmean(LocAvgDNI,24);
subplot(2,1,2)
plot(TS,movz1)
hold on
title('Daily Mean DNI Over 1-year Period (2020) in Northwest US')
ylabel('Direct Normal Irradiance (kWh/m^2/day)')
xlabel('Time')
%xlim([Begin End])
datetick('x',6)
hold off

% Next is a plot with moving mean window of 7 days:
movy1 = movmean(LocAvgDewPoint,(24*7));
figure(16); clf
subplot(2,1,1)
plot(TS,movy1)
hold on
title('Daily Mean Dew Point Over 1-year Period (2020) in Southern California US')
ylabel('Dew point (°C)')
xlabel('Time')
%xlim([Begin End])
datetick('x',6)
hold on
movz1 = movmean(LocAvgDNI,(24*7));
subplot(2,1,2)
plot(TS,movz1)
hold on
title('Daily Mean DNI Over 1-year Period (2020) in Southern California US')
ylabel('Direct Normal Irradiance (kWh/m^2/day)')
xlabel('Time')
%xlim([Begin End])
datetick('x',6)
hold off

% The moving mean with 7 day window allows us to see the seasonal trends
% better, so we will plot the other locations using this script as a model.

%% Calc and plot for NE Dew Point
%Location 1 = Northeast US
NAD_forNE = NAD(indNErevis,:);

YrLength=YrEnd(1);
LocAvgDewPoint = NaN(YrLength(1),1);
for j=1:YrLength(1);
k = [j:YrLength:length(NAD_forNE)]';
l = NAD_forNE(k,:);
LocAvgDewPoint(j)= mean(l(:,11));
end 

LocMovDewPoint = mean(LocAvgDewPoint);
y2 = LocAvgDewPoint;
figure(4); clf
plot(TS,y2)
hold on
title('Mean Hourly Dew Point Over 1-year Period (2020) in Northeast US')
ylabel('Dew point (°C)')
xlabel('Time')
%xlim([Begin End])
datetick('x',6)


%%% Calc and plot for Irraiance
YrLength=YrEnd(1);
LocAvgDNI = NaN(YrLength(1),1);
for j=1:YrLength(1);
k = [j:YrLength:length(NAD_forNE)]';
l = NAD_forNE(k,:);
LocAvgDNI(j)= mean(l(:,7));
end


movy2 = movmean(LocAvgDewPoint,24*7);
figure(5); clf
subplot(2,1,1)
plot(TS,movy2)
hold on
title('Daily Mean Dew Point Over 1-year Period (2020) in Northeast US')
ylabel('Dew point (°C)')
xlabel('Time')
%xlim([Begin End])
datetick('x',6)
hold on
movz2 = movmean(LocAvgDNI,24*7);
subplot(2,1,2)
plot(TS,movz2)
hold on
title('Daily Mean DNI Over 1-year Period (2020) in Northeast US')
ylabel('Direct Normal Irradiance (kWh/m^2/day)')
xlabel('Time')
%xlim([Begin End])
datetick('x',6)
hold off

%% Calc and plot for C Dew Point
%Location 3 = Central US
NAD_forC = NAD(indCrevis,:);

YrLength=YrEnd(1);
LocAvgDewPoint = NaN(YrLength(1),1);
for j=1:YrLength(1);
k = [j:YrLength:length(NAD_forC)]';
l = NAD_forC(k,:);
LocAvgDewPoint(j)= mean(l(:,11));
end 

LocMovDewPoint = mean(LocAvgDewPoint);
y3 = LocAvgDewPoint;
figure(6); clf
plot(TS,y3)
hold on
title('Mean Hourly Dew Point Over 1-year Period (2020) in Central US')
ylabel('Dew point (°C)')
xlabel('Time')
%xlim([Begin End])
datetick('x',6)
hold off

%%% Calc and plot for Irraiance
YrLength=YrEnd(1);
LocAvgDNI = NaN(YrLength(1),1);
for j=1:YrLength(1);
k = [j:YrLength:length(NAD_forC)]';
l = NAD_forC(k,:);
LocAvgDNI(j)= mean(l(:,7));
end

movy3 = movmean(LocAvgDewPoint,24*7);
figure(7); clf
subplot(2,1,1)
plot(TS,movy3)
hold on
title('Daily Mean Dew Point Over 1-year Period (2020) in Central US')
ylabel('Dew point (°C)')
xlabel('Time')
%xlim([Begin End])
datetick('x',6)
hold on
movz3 = movmean(LocAvgDNI,24*7);
subplot(2,1,2)
plot(TS,movz3)
hold on
title('Daily Mean DNI Over 1-year Period (2020) in Central US')
ylabel('Direct Normal Irradiance (kWh/m^2/day)')
xlabel('Time')
%xlim([Begin End])
datetick('x',6)
hold off


%% Calc and plot for SE Dew Point
%Location 4 = Southeast US
NAD_forSE = NAD(indSErevis,:);

YrLength=YrEnd(1);
LocAvgDewPoint = NaN(YrLength(1),1);
for j=1:YrLength(1);
k = [j:YrLength:length(NAD_forSE)]';
l = NAD_forSE(k,:);
LocAvgDewPoint(j)= mean(l(:,11));
end 

LocMovDewPoint = mean(LocAvgDewPoint);
y4 = LocAvgDewPoint;
figure(8); clf
plot(TS,y4)
hold on
title('Mean Hourly Dew Point Over 1-year Period (2020) in Southeast US')
ylabel('Dew point (°C)')
xlabel('Time')
%xlim([Begin End])
datetick('x',6)
hold off

%%% Calc and plot for Irraiance
YrLength=YrEnd(1);
LocAvgDNI = NaN(YrLength(1),1);
for j=1:YrLength(1);
k = [j:YrLength:length(NAD_forSE)]';
l = NAD_forSE(k,:);
LocAvgDNI(j)= mean(l(:,7));
end

movy4 = movmean(LocAvgDewPoint,24*7);
figure(9); clf
subplot(2,1,1)
plot(TS,movy4)
hold on
title('Daily Mean Dew Point Over 1-year Period (2020) in Southeast US')
ylabel('Dew point (°C)')
xlabel('Time')
%xlim([Begin End])
datetick('x',6)
hold on
movz4 = movmean(LocAvgDNI,24*7);
subplot(2,1,2)
plot(TS,movz4)
hold on
title('Daily Mean DNI Over 1-year Period (2020) in Southeast US')
ylabel('Direct Normal Irradiance (kWh/m^2/day)')
xlabel('Time')
%xlim([Begin End])
datetick('x',6)
hold off


%% Calc and plot for S Dew Point
%Location 5 = South US
NAD_forS = NAD(indSrevis,:);

YrLength=YrEnd(1);
LocAvgDewPoint = NaN(YrLength(1),1);
for j=1:YrLength(1);
k = [j:YrLength:length(NAD_forS)]';
l = NAD_forS(k,:);
LocAvgDewPoint(j)= mean(l(:,11));
end 

LocMovDewPoint = mean(LocAvgDewPoint);
y5 = LocAvgDewPoint;
figure(10); clf
plot(TS,y5)
hold on
title('Mean Hourly Dew Point Over 1-year Period (2020) in South US')
ylabel('Dew point (°C)')
xlabel('Time')
%xlim([Begin End])
datetick('x',6)
hold off

%%% Calc and plot for Irraiance
YrLength=YrEnd(1);
LocAvgDNI = NaN(YrLength(1),1);
for j=1:YrLength(1);
k = [j:YrLength:length(NAD_forS)]';
l = NAD_forS(k,:);
LocAvgDNI(j)= mean(l(:,7));
end

movy5 = movmean(LocAvgDewPoint,24*7);
figure(11); clf
subplot(2,1,1)
plot(TS,movy5)
hold on
title('Daily Mean Dew Point Over 1-year Period (2020) in South US')
ylabel('Dew point (°C)')
xlabel('Time')
%xlim([Begin End])
datetick('x',6)
hold on
movz5 = movmean(LocAvgDNI,24*7);
subplot(2,1,2)
plot(TS,movz5)
hold on
title('Daily Mean DNI Over 1-year Period (2020) in South US')
ylabel('Direct Normal Irradiance (kWh/m^2/day)')
xlabel('Time')
%xlim([Begin End])
datetick('x',6)
hold off

%% Calc and plot for North CA Dew Point
%Location 6 = N CA US
NAD_forNCA = NAD(indNCArevis,:);

YrLength=YrEnd(1);
LocAvgDewPoint = NaN(YrLength(1),1);
for j=1:YrLength(1);
k = [j:YrLength:length(NAD_forNCA)]';
l = NAD_forNCA(k,:);
LocAvgDewPoint(j)= mean(l(:,11));
end 

LocMovDewPoint = mean(LocAvgDewPoint);
y6 = LocAvgDewPoint;
figure(12); clf
plot(TS,y6)
hold on
title('Mean Hourly Dew Point Over 1-year Period (2020) in Northern California')
ylabel('Dew point (°C)')
xlabel('Time')
%xlim([Begin End])
datetick('x',6)
hold off

%%% Calc and plot for Irraiance
YrLength=YrEnd(1);
LocAvgDNI = NaN(YrLength(1),1);
for j=1:YrLength(1);
k = [j:YrLength:length(NAD_forNCA)]';
l = NAD_forNCA(k,:);
LocAvgDNI(j)= mean(l(:,7));
end

movy6 = movmean(LocAvgDewPoint,24*7);
figure(13); clf
subplot(2,1,1)
plot(TS,movy6)
hold on
title('Daily Mean Dew Point Over 1-year Period (2020) in Northern California US')
ylabel('Dew point (°C)')
xlabel('Time')
%xlim([Begin End])
datetick('x',6)
hold on
movz6 = movmean(LocAvgDNI,24*7);
subplot(2,1,2)
plot(TS,movz6)
hold on
title('Daily Mean DNI Over 1-year Period (2020) in Northern California US')
ylabel('Direct Normal Irradiance (kWh/m^2/day)')
xlabel('Time')
%xlim([Begin End])
datetick('x',6)
hold off

%% Calc and plot for SCA Dew Point
%Location 7 = SCA US
NAD_forSCA = NAD(indSCArevis,:);

YrLength=YrEnd(1);
LocAvgDewPoint = NaN(YrLength(1),1);
for j=1:YrLength(1);
k = [j:YrLength:length(NAD_forSCA)]';
l = NAD_forSCA(k,:);
LocAvgDewPoint(j)= mean(l(:,11));
end 

LocMovDewPoint = mean(LocAvgDewPoint);
y7 = LocAvgDewPoint;
figure(14); clf
plot(TS,y7)
hold on
title('Mean Hourly Dew Point Over 1-year Period (2020) in Southern California')
ylabel('Dew point (°C)')
xlabel('Time')
%xlim([Begin End])
datetick('x',6)
hold off

%%% Calc and plot for Irraiance
YrLength=YrEnd(1);
LocAvgDNI = NaN(YrLength(1),1);
for j=1:YrLength(1);
k = [j:YrLength:length(NAD_forSCA)]';
l = NAD_forSCA(k,:);
LocAvgDNI(j)= mean(l(:,7));
end

movy7 = movmean(LocAvgDewPoint,24*7);
figure(15); clf
subplot(2,1,1)
plot(TS,movy7)
hold on
title('Daily Mean Dew Point Over 1-year Period (2020) in Southern California US')
ylabel('Dew point (°C)')
xlabel('Time')
%xlim([Begin End])
datetick('x',6)
hold on
movz7 = movmean(LocAvgDNI,24*7);
subplot(2,1,2)
plot(TS,movz7)
hold on
title('Daily Mean DNI Over 1-year Period (2020) in Southern California US')
ylabel('Direct Normal Irradiance (kWh/m^2/day)')
xlabel('Time')
%xlim([Begin End])
datetick('x',6)
hold off

p = polyfit(TS,movz7,5)
f = movmean(polyval(p,TS),24);
figure(17); clf
subplot(2,1,1)
plot(TS,movz7,'-',TS,f,'-')
hold on
legend('DNI data','Polynomial fit')
p2 = polyfit(TS,movy7,5)
f2 = movmean(polyval(p2,TS),24);
subplot(2,1,2)
plot(TS,movy7,'-',TS,f2,'-')
hold on
legend('Dew Point data','Polynomial fit')
hold off


