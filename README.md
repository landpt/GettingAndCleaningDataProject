## Getting and Cleaning Data - Course Project

This R script is the work done for the course project of Getting and Cleaning Data (by Jeff Leek, PhD, Roger D. Peng, PhD, Brian Caffo, PhD) to the students of Coursera.

# Objective

The main task of this project was to create a R script that would combine and merge, as well as clean, different data sets collected from the accelerometers from the Samsung Galaxy S smartphones.

As such, this R script is comprised by five main different tasks, that are as follows:
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names. 
* Using the just created data table, create a second, independent tidy data set with the average of each variable for each activity and each subject.

# Instructions

Datasets are available at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The code should have a file run_analysis.R in the main directory that can be run as long as the Samsung data is in main working directory where the subfolders of the test and train matrix are. 
Just run run_analysis.R to produce the tidy data.

# Result

The final and clean data will be saved in another file - tidy.csv.

If you want a txt file instead, change the last line from:
write.table(tidy, file="tidy.csv" ,sep = ",", row.names = FALSE)

to:

write.table(tidy, file="tidy.txt" ,sep = ",", row.names = FALSE)




* Author: landpt
* Date: 23th November 2014