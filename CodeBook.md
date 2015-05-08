Project 1 ExData Plotting

## Files:
* plot1.R:  Produces plot1.png.  Note that data extract is done in sourced file "Plot_source.R"
* plot2.R:  Produces plot2.png.  Note that data extract is done in sourced file "Plot_source.R"
* plot3.R:  Produces plot3.png.  Note that data extract is done in sourced file "Plot_source.R"
* plot4.R:  Produces plot4.png   Note that data extract is done in sourced file "Plot_source.R"
* Plot_source.R:  Don't run this file - it is called by Plot1.R so there is no need to run this as a separate file.  Plot_source.R extracts the data from the repository creating the working file required by Plot1.R.  Plot_source.R will access the repository directly so no downloaded file is required to run the program.  Plot_source.R does not download a file to the computer, instead using only memory, so no source file is left on the hard drive.  Technically this code should have been included in plot1.R through plot4.R but that seems a bit wasteful, so it is broken out separately here.
* Plot1.png:  Output of first plot (histogram)
* Plot2.png:  Output of second plot (line chart of global active power)
* Plot3.png:  Output of third plot (line plot of sub-metering)
* Plot4.png:  Output of fourth plot (4-up plot)

## program:  plot1-4.R:
* sources "Plot_source.R" to extract data from repository ("Electric" data.table)
* creates "Plot1.png" using "hist()" command on "Electric" data.table.  "plot" command sets titles and color via "xlab", "ylab", and "col"
* creates "Plot2.png" using "plot()" command on "Electric".  "plot" sets titles, line style via "xlab", "ylab", and "type" commands
* creates "Plot3.png" using "plot()" command on "Electric". "plot" builds the axes and frame via "type = 'n'" command and sets titles via "xlab" and "ylab".  Individual lines are then overlayed onto the frame via "lines()" command.  Each "line" command sets color via "col".  "legend" command is used to build the legend.
* creates "Plot4.png" using "par" command with "mfcol"to build 4-up structure. First plot in 4-up is per Plot2.png.  Second plot is per Plot3.png with modifications to legend (text scale is set to 50% with "cex" and boundary is removed with "bty"). Third plot is new and is a simple "plot". Fourth plot has axis 2 removed via "yaxt" command.  New axis for y is generated using "axis()" command with text set to 70% using "cex.axis" command (this allows for five tick mark labels vs 3 without the size change). 

## program:  Plot_source.R:
* uses temp file to store the contents of the zip file
* reads zip file into the file "bigElectric"; "?" data element is converted to "NA" and date and time columns are set to "character" during read
* filters "bigElectric" using character string as filter on Date field; puts subset in file "Electric"
* creates "date" field from "Date" and "Time" via strptime command to create a POSiXlt date field including both elements
* deletes miscellaneous variables from memory
* passes "Electric" to Plot1.R

## data.table:  Electric:
* Electric is the extract file passed from Plot_source.R to Plot1.R to drive the four plots recorded in the png files.
* date:  created by pasting the original "Date" and "Time" fields and then using strptime to turn this character string into a POSIXlt date field
* all other fields are per the original raw data file, no changes
* "Electric", as with datasets, exists only as a variable in memory, nothing is written to the hard drive other than the four Output .png files.
