## Load libraries

library(data.table)


## Load files

trainlabels <- read.table("./train/y_train.txt",header=FALSE)
trainsubjectid <- read.table("./train/subject_train.txt",header=FALSE)
trainSampleData <- read.table("./train/X_train.txt",header=FALSE)

trainData <- cbind(trainsubjectid,trainSampleData,trainlabels)


testlabels <- read.table("./test/y_test.txt",header=FALSE)
testsubjectid <- read.table("./test/subject_test.txt",header=FALSE)
testSampleData <- read.table("./test/X_test.txt",header=FALSE)


testData <- cbind(testsubjectid,testSampleData,testlabels)


## Merge train and test matrix

mergedData <- rbind(trainData, testData)

## Read features

features <- read.table("features.txt",header=FALSE,colClasses="character")

## Writing str(features), we can see that it has 2 variables, the first one
## identifies the feature number, and the second nome is the features name.

## As such, we're only interested in the second variable.

colnames(mergedData) <- c("SubjectID",features$V2,"Activity")

## Identify mean and standard deviation columns

meanstdcols = grep("mean|std",colnames(mergedData))

## It seems there are 79 columns related to mean and std for each measurement.
## However, we still need to keep the first column (subject id) and the last column (label):

extractCols <- c(1,meanstdcols,length(mergedData))
meanstdData <- mergedData[,extractCols]

## Read Activities

activities <- read.table("activity_labels.txt", sep="", header=FALSE, stringsAsFactors=FALSE)

## Now we need to replace the last column with the description

meanstdData$Activity <- activities[meanstdData$Activity,2]


## Finally, we are asked to create a second matrix with the average of each variable for each activity and each subject.

DT <- data.table(meanstdData)
tidy <- DT[,lapply(.SD,mean),by = "SubjectID,Activity"]
write.table(tidy, file="tidy.csv" ,sep = ",", row.names = FALSE)