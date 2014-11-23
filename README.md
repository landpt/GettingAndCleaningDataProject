## Getting and Cleaning Data - Course Project

This R script is the work done for the course project of Getting and Cleaning Data (by Jeff Leek, PhD, Roger D. Peng, PhD, Brian Caffo, PhD) to the students of Coursera.

The main task of this project was to create a R script that would combine and merge, as well as clean, different data sets collected from the accelerometers from the Samsung Galaxy S smartphones.

As such, this R script is comprised by four main different tasks, that are as follows:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 

The code should have a file run_analysis.R in the main directory that can be run as long as the Samsung data is in main working directory where the subfolders of the test and train matrix are. 

The final and clean data will be saved in another file - tidy.csv.

If you want a txt file instead, change the last line from:
write.table(tidy, file="tidy.csv" ,sep = ",", row.names = FALSE)

to:

write.table(tidy, file="tidy.txt" ,sep = ",", row.names = FALSE)




Author: landpt
Date: 23th November 2014