The .m files that will produce the analysis are the NSRDBcode files and the SolarSupplyCurveandMonthlyCOde file
Download the matlab table file (so you do not have to spend an hour running the NSRDB READIN file) and the rest of the NSRDB code will work
The file required for the solar supply curve and monthly analysis are perezANN.csv and pv_open_202.csv downloaded from the NREL.
You will have to change the paths to access the place you put this data. 

The basic analysis involved getting the data we wanted and making maps. The only calculation made was for energy generation. Most of the code is variable making and then mapping.