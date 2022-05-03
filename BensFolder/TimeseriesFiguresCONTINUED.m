% 
a=indNW(1);
b=indNW(length(indNW));
TS= datenum(2020,NAD(a:b,2),NAD(a:b,3),NAD(a:b,4),NAD(a:b,5),0);
Begin = TS(1);
End = TS(length(indNW));
%indyA=find(NAD(:,16)==47.49);
y = NAD(indNW,12);
%y = NAD(1:8670,12);
figure(1); clf
plot(TS,y)
hold on
datetick('x',6)
title('Solar Zenith Cycle Over 1-year Period in Northwest US (47.49,-122.22)')
ylabel('Solar Zenith Angle (Degrees)')
xlabel('Time')
%xlim([Begin End])
datetick('x',6)
grid on

ymean= movmean(y,24);
plot(TS,ymean)
datetick('x',0)
title('Solar Zenith Cycle Over 1-year Period in Northwest US (47.49,-122.22)')
ylabel('Solar Zenith Angle (Degrees)')
xlabel('Time')
%xlim([Begin End])
datetick('x',6)
grid on
hold off

%% Variation over 5 locations

y1 = movmean(NAD(indNW,12),24);
figure(2); clf
plot(TS,y1)
hold on
datetick('x',0)
title('Mean Solar Zenith Cycle Over 1-year Period in Northwest US (47.49,-122.22)')
ylabel('Solar Zenith Angle (Degrees)')
xlabel('Time')
xlim([Begin End])
datetick('x',1)
grid on
