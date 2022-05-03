NAD_shortened = NAD(1:5000000,:);
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


%%   %Plotting change over one year (for 5 stations)
TSeries_Year = datenum(2020,daily_timeind(1:365,2),NAD(1:365,3),0,0,0);

indNW=find(daily_lat_lon(:,1)==47.49);
y = avgdaily_solzen(indNW(1):indNW(365));
figure(1); clf
plot(TSeries_Year,y)
hold on
datetick('x',0)
title('Solar Zenith Cycle Over 1-year Period in Northwest US (47.49,-122.22)')
ylabel('Solar Zenith Angle (Degrees)')
xlabel('Time')
%xlim([Begin End])
datetick('x',6)
grid on
hold off 


%% A: [47.4900000000000,-122.220000000000]
Begin = TSeries_5day(1)
End = TSeries_5day(120)
indyA=find(NAD(:,16)==47.49);
y = NAD(indyA(1):indyA(120),14);
figure(1); clf
plot(TSeries_5day,y)
hold on
datetick('x',0)
title('Hourly Humidity Variation for January (5 days) in Northwest US (47.49,-122.22)')
ylabel('Humidity (%)')
xlabel('Time')
xlim([Begin End])
datetick('x',6)
grid on
hold off 

y = NAD(indyA(1):indyA(120),13);
figure(2); clf
scatter(TSeries_5day,y)
datetick('x',0)
title('Hourly Measured Albedo for January (5 days) in Northwest US (47.49,-122.22)')
ylabel('Albedo')
xlabel('Time')
xlim([Begin End])
datetick('x',6)
grid on
hold off 
%% B: [43.7300000000000,-90.9800000000000]
indyB = find(NAD(:,16)==43.73);
y = NAD(indyB(1):indyB(120),14);
figure (3); clf
scatter(TSeries_5day,y)
datetick('x',0)
title('Hourly Humidity Variation for January (5 days) in Southeast US (43.73,-90.98)')
ylabel('Humidity (%)')
xlabel('Time')
xlim([Begin End])
datetick('x',6)
grid on
hold off 

y = NAD(indyB(1):indyB(120),13);
figure(4); clf
scatter(TSeries_5day,y)
datetick('x',0)
title('Hourly Measured Albedo for January (5 days) in Southeast US (43.73,-90.98)')
ylabel('Albedo')
xlabel('Time')
xlim([Begin End])
datetick('x',6)
grid on
hold off 
%% C: [36.7300000000000,-119.500000000000]
indyC = find(NAD(:,16)==36.73);
y = NAD(indyC(1):indyC(120),14);
figure (5); clf
scatter(TSeries_5day,y)
datetick('x',0)
title('Hourly Humidity Variation for January (5 days) in Southwest US (36.73,-119.50)')
ylabel('Humidity (%)')
xlabel('Time')
xlim([Begin End])
datetick('x',6)
grid on
hold off 

y = NAD(indyC(1):indyC(120),13);
figure(6); clf
scatter(TSeries_5day,y)
datetick('x',0)
title('Hourly Measured Albedo for January (5 days) in Southwest US (36.73,-119.98)')
ylabel('Albedo')
xlabel('Time')
xlim([Begin End])
datetick('x',6)
grid on
hold off 

%% [35.3300000000000,-83.2200000000000]
indyD = find(NAD(:,16)==35.33);
y = NAD(indyD(1):indyD(120),14);
figure (7); clf
scatter(TSeries_5day,y)
datetick('x',0)
title('Hourly Humidity Variation for January (5 days) in Northeast US (35.33,-83.22)')
ylabel('Humidity (%)')
xlabel('Time')
xlim([Begin End])
datetick('x',6)
grid on
hold off 

y = NAD(indyD(1):indyD(120),13);
figure(8); clf
scatter(TSeries_5day,y)
datetick('x',0)
title('Hourly Measured Albedo for January (5 days) in Northeast US (35.33,-83.22)')
ylabel('Albedo')
xlabel('Time')
xlim([Begin End])
datetick('x',6)
grid on
hold off 