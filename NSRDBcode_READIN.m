%% NSRDB Data Read-in: 
% This is the script used to compile all the downloaded data.
% 28 Grids were chosen to acquire PSM v3 data for the continental US, and
% here they were concatenized into a single matlab table, labelled "NAD"
% (short for "NSRDB all data")
% 
% DUE TO THE LARGE VOLUME OF STORAGE REQUIRED TO TRANSFER THE ORIGINAL
% EXCEL SHEETS, IT IS RECOMMENDED THAT THIS CODE IS NOT RUN, AND INSTEAD
% THE PRESAVED WORKSPACE CONTAINING THE VARIABLE 'NSRDB_alldata' SHOULD BE
% LOADED IN ORDER TO RUN THE NEXT TWO MATLAB CODE FILES.

addpath(genpath('C:\Users\Ben Alexander\OneDrive\Desktop\Solar Irradiance'))
%% 1,6 and 1,7 is index for ALL latitudes and longitudes
%% 
cd 'C:\Users\Ben Alexander\OneDrive\Desktop\Solar Irradiance\G_ALL'
all_files = dir('C:\Users\Ben Alexander\OneDrive\Desktop\Solar Irradiance\G_ALL')
files = struct2cell(all_files)'
filenames = NaN(length(files)-2,1)
filenames = files(3:length(files),1)

%% 
targetfile = (filenames(1,1))
targetfilestr = cellstr(targetfile)
G1data = xlsread(targetfilestr{1,1});
G1lat = G1data(1,6)
G1lon = G1data(1,7)
G1array = NaN(length(G1data)-3,17)
G1array((1:length(G1data)-2),16) = G1lat
G1array((1:length(G1data)-2),17) = G1lon
G1array((1:length(G1data)-2),1:15) = G1data(3:(length(G1data)),1:15)


%% Attempt at converting above code to a for-loop (update: IT WORKS!):

cd 'C:\Users\Ben Alexander\OneDrive\Desktop\Solar Irradiance\G17'
all_files = dir('C:\Users\Ben Alexander\OneDrive\Desktop\Solar Irradiance\G17')
files = struct2cell(all_files)'
filenames = NaN(length(files)-2,1)
filenames = files(3:length(files),1)

%% 
C3 = C;  %<--This is to save progress of C in case something bad happens
f = waitbar(0, 'Starting');
for i=3:length(filenames);
A = C;
targetfile = (filenames(i,1));
targetfilestr = cellstr(targetfile);
LocData = xlsread(targetfilestr{1,1});
LocLat = LocData(1,6);
LocLon = LocData(1,7);
array = NaN(length(LocData)-3,17);
array((1:length(LocData)-2),16)= LocLat;
array((1:length(LocData)-2),17)= LocLon;
array((1:length(LocData)-2),1:15) = LocData(3:(length(LocData)),1:15);
B = array;
C = cat(1,A,B);
waitbar(i/(length(filenames)-2), f, sprintf('Progress: %d %%', floor(i/(length(filenames)-2)*100)));
    pause(0.1);
end 
close(f)
