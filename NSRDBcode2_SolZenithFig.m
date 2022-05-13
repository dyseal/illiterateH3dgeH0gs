%% NOTE: THIS CODE SHOULD TAKE ~3.5 MINUTES TO RUN
%% LOADING DATA and VARIABLES
%Run section if 'BenNSRDB_Code'  weren't yet ran
addpath('C:\Users\Ben Alexander\OneDrive\Desktop\BA_NSRDB_Expl');
load('NAD.mat');
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

TSeries_5day = datenum(2020,1,NAD(1:120,3),NAD(1:120,4),NAD(1:120,5),0); %  1:8760 = rows per station 

%% Solar zenith time series 
%%  %Creating avg daily solar zenith angle array
    interval = length(NAD(:,12))/24;
    a = 1;
    b=24;
    avgdaily_solzen = NaN(interval,1);
    for j=1:length(avgdaily_solzen)
        avgdaily_solzen(j) = mean(NAD(a:b,12));
        a=a+24;
        b=b+24;
    end
    
    %Array of yr-mo-day for corresponding variables (for DAILY avgs/modes)
    interval = length(NAD(:,1:3))/24;
    a = 1;
    b=24;
    daily_timeind = NaN(interval,3);
    for j=1:length(daily_timeind)
        daily_timeind(j,1:3) = mean(NAD(a:b,1:3));
        a=a+24;
        b=b+24;
    end
    
    %Array of lat/lon for corresponding variable (for DAILY avgs/modes)
    interval = length(NAD(:,16:17))/24;
    a = 1;
    b=24;
    daily_lat_lon = NaN(interval,2);
    for j=1:length(daily_lat_lon)
        daily_lat_lon(j,1:2) = mean(NAD(a:b,16:17));
        a=a+24;
        b=b+24;
    end

%% Exploring Calculations and Plots for solar zenith angle

%Using Northwest US as location for test figures 1
NAD_forNW = NAD(indNWrevis,:);

YrLength=YrEnd(1);
LocAvgZenith = NaN(YrLength(1),1);
for j=1:YrLength(1);
k = [j:YrLength:length(NAD_forNW)]';
l = NAD_forNW(k,:);
LocAvgZenith(j)= mean(l(:,12));
end 

y1 = LocAvgZenith;
figure(2); clf
plot(TS,y1)
hold on
datetick('x',6)
title('Mean Hourly Solar Zenith Angle Over 1-year Period (2020) in Northwest US')
ylabel('Solar Zenith Angle (Degrees)')
xlabel('Time')
xlim([Begin End])
datetick('x',6)

% First we plot the moving mean over 24 hour windows for the year:
movy1 = movmean(LocAvgZenith,24);
figure(3); clf
%subplot(2,1,1)
plot(TS,movy1)
hold on
title('Daily Mean Solar Zenith Angle Over 1-year Period (2020) in Northwest US')
ylabel('Solar Zenith Angle (Degrees)')
xlabel('Time')
xlim([Begin End])
datetick('x',6)

%% Solar zenith angle over 7 locations
%Location 1 = Northwest US (47.49,-122.22) 
NAD_forNW = NAD(indNWrevis,:);
YrLength=YrEnd(1);
LocAvgZenith = NaN(YrLength(1),1);
for j=1:YrLength(1);
k = [j:YrLength:length(NAD_forNW)]';
l = NAD_forNW(k,:);
LocAvgZenith(j)= mean(l(:,12));
end 
% First we plot the moving mean over 24 hour windows for the year:
movy1 = movmean(LocAvgZenith,24);
figure(3); clf
%subplot(2,1,1)
plot(TS,movy1)
hold on
title('Mean Solar Zenith Cycle Over 1-year Period in Northwest US)')
ylabel('Solar Zenith Angle (Degrees)')
xlabel('Time')
xlim([Begin End])
datetick('x',1)
hold off

%Location 2 = Southeast US (27.8500,-81.6600); 
NAD_forSE = NAD(indSErevis,:);
YrLength=YrEnd(1);
LocAvgZenith = NaN(YrLength(1),1);
for j=1:YrLength(1);
k = [j:YrLength:length(NAD_forSE)]';
l = NAD_forSE(k,:);
LocAvgZenith(j)= mean(l(:,12));
end 
% First we plot the moving mean over 24 hour windows for the year:
movy2 = movmean(LocAvgZenith,24);
figure(3); clf
%subplot(2,1,1)
plot(TS,movy2)
hold on
title('Mean Solar Zenith Cycle Over 1-year Period in Southeast US')
ylabel('Solar Zenith Angle (Degrees)')
xlabel('Time')
xlim([Begin End])
datetick('x',1)
grid on

%Location 3 = Northeast US (43.9300,-71.1000)
NAD_forNE = NAD(indNErevis,:);
YrLength=YrEnd(1);
LocAvgZenith = NaN(YrLength(1),1);
for j=1:YrLength(1);
k = [j:YrLength:length(NAD_forNE)]';
l = NAD_forNE(k,:);
LocAvgZenith(j)= mean(l(:,12));
end 
% First we plot the moving mean over 24 hour windows for the year:
movy3 = movmean(LocAvgZenith,24);
figure(3); clf
%subplot(2,1,1)
plot(TS,movy3)
hold on
title('Mean Solar Zenith Cycle Over 1-year Period in Northeast US')
ylabel('Solar Zenith Angle (Degrees)')
xlabel('Time')
xlim([Begin End])
datetick('x',1)
grid on

%Location 4 = Southern CA US (36.73,-119.50)
NAD_forSCA = NAD(indSCArevis,:);
YrLength=YrEnd(1);
LocAvgZenith = NaN(YrLength(1),1);
for j=1:YrLength(1);
k = [j:YrLength:length(NAD_forSCA)]';
l = NAD_forSCA(k,:);
LocAvgZenith(j)= mean(l(:,12));
end 
% First we plot the moving mean over 24 hour windows for the year:
movy4 = movmean(LocAvgZenith,24);
figure(3); clf
%subplot(2,1,1)
plot(TS,movy4)
hold on
title('Mean Solar Zenith Cycle Over 1-year Period in Southern California US')
ylabel('Solar Zenith Angle (Degrees)')
xlabel('Time')
xlim([Begin End])
datetick('x',1)
grid on

%Location 5 = Central (36.130,-95.180)
NAD_forC = NAD(indCrevis,:);
YrLength=YrEnd(1);
LocAvgZenith = NaN(YrLength(1),1);
for j=1:YrLength(1);
k = [j:YrLength:length(NAD_forC)]';
l = NAD_forC(k,:);
LocAvgZenith(j)= mean(l(:,12));
end 
% First we plot the moving mean over 24 hour windows for the year:
movy5 = movmean(LocAvgZenith,24);
figure(3); clf
%subplot(2,1,1)
plot(TS,movy5)
hold on
title('Mean Solar Zenith Cycle Over 1-year Period in Central US')
ylabel('Solar Zenith Angle (Degrees)')
xlabel('Time')
xlim([Begin End])
datetick('x',1)
grid on

%Location 6 = Southern
NAD_forS = NAD(indSrevis,:);
YrLength=YrEnd(1);
LocAvgZenith = NaN(YrLength(1),1);
for j=1:YrLength(1);
k = [j:YrLength:length(NAD_forS)]';
l = NAD_forS(k,:);
LocAvgZenith(j)= mean(l(:,12));
end 
% First we plot the moving mean over 24 hour windows for the year:
movy6 = movmean(LocAvgZenith,24);
figure(3); clf
%subplot(2,1,1)
plot(TS,movy6)
hold on
title('Mean Solar Zenith Cycle Over 1-year Period in South US')
ylabel('Solar Zenith Angle (Degrees)')
xlabel('Time')
xlim([Begin End])
datetick('x',1)
grid on

%Location 7 = Northern California
NAD_forNCA = NAD(indNCArevis,:);
YrLength=YrEnd(1);
LocAvgZenith = NaN(YrLength(1),1);
for j=1:YrLength(1);
k = [j:YrLength:length(NAD_forNCA)]';
l = NAD_forNCA(k,:);
LocAvgZenith(j)= mean(l(:,12));
end 
% First we plot the moving mean over 24 hour windows for the year:
movy7 = movmean(LocAvgZenith,24);
figure(3); clf
%subplot(2,1,1)
plot(TS,movy7)
hold on
title('Mean Solar Zenith Cycle Over 1-year Period in Northern California')
ylabel('Solar Zenith Angle (Degrees)')
xlabel('Time')
xlim([Begin End])
datetick('x',1)
grid on
%% 

figure(4); clf
plot(TS,movy1,'linewidth',2)
hold on
plot(TS,movy2,'linewidth',2)
hold on 
plot(TS,movy3,'linewidth',2)
hold on 
plot(TS,movy4,'linewidth',2)
hold on 
plot(TS,movy5,'linewidth',2)
hold on
plot(TS,movy6,'linewidth',2)
hold on
plot(TS,movy7,'linewidth',2)
title('Moving Mean Solar Zenith Cycle Over 1-year Period')
ylabel('Solar Zenith Angle (Degrees)')
xlabel('Time')
xlim([Begin End])
ylim([70 110])
legend('Northwest', 'Southeast', 'Northeast', 'California(S)', 'Central', 'Southern', 'California(N)', 'Location', 'southeast')
datetick('x',1)
ax = gca;
ax.FontSize = 18;
grid on
hold off
