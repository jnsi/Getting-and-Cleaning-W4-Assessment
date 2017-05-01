#check if the directory data exists 
if (!file.exists("data"))
   {dir.create("data")}

library(downloader)
library(data.table)
library(dplyr)

#Download the file to load and unzip the file
fileUrl <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
download(fileUrl, dest="./data/dataset.zip", mode="wb") 
unzip("./data/dataset.zip", exdir = "./data")


#Date of the download of the file
dateDownload <- date()
print(dateDownload) 

#Read and analyse data
#Metadata with the names of features and activities

featuresName <- read.table('./data/UCI HAR Dataset/features.txt')
#names(featuresName)
#dim(featuresName)
#str(featuresName)
activitylabels <- read.table("./data/UCI HAR Dataset/activity_labels.txt")
#names(activitylabels)
#str(activitylabels)


#Read and analyse training and test data sets with dim, names, class, str ...etc..
subjecttrain <- read.table("./data/UCI HAR Dataset/train/subject_train.txt", header = FALSE)
Yactivitytrain <- read.table("./data/UCI HAR Dataset/train/y_train.txt", header = FALSE)
Xfeaturestrain <- read.table("./data/UCI HAR Dataset/train/X_train.txt", header = FALSE)
#str(subjecttrain)
#str(Yactivitytrain)
#str(Xfeaturestrain)
#names(Xfeaturestrain)

subjecttest <- read.table("./data/UCI HAR Dataset/test/subject_test.txt", header = FALSE)
Yactivitytest <- read.table("./data/UCI HAR Dataset/test/y_test.txt", header = FALSE)
Xfeaturestest <- read.table("./data/UCI HAR Dataset/test/X_test.txt", header = FALSE)
#str(subjecttest)
#str(Yactivitytest)
#str(Xfeaturestest)
#names(Xfeaturestest)

#Put data together by matching the  item : subject, activity, features
subject <- rbind(subjecttrain, subjecttest)
activity <- rbind(Yactivitytrain, Yactivitytest)
features <- rbind(Xfeaturestrain, Xfeaturestest)
#str(subject)
#dim(subject)

#Rename the variables from V1 to V561 based on the columns of featuresName linked to metadata 

colnames(features) <- t(featuresName[2])
colnames(activity) <- "Activity"
#View(activity)
colnames(subject) <- "Subject"
#View(subject)

#Merge the data
mergeData <- cbind(features,activity,subject)
#View(mergeData)

#Extracts only the measurements on the mean and standard deviation for each measurement.
STDoK <- grep(".*Std.*|.*Mean.*", names(mergeData), ignore.case=TRUE)
MeanOk <- grep(".*Mean.*", names(mergeData), ignore.case=TRUE)
 
ColumnsOK <- c(STDoK, MeanOk, 562, 563)
#dim(mergeData)

ExtractMeanOrSTD <- mergeData[,ColumnsOK]

#View the new dimension for ExtractMeanOrSTD with the right columns : dim or str
#str(ExtractMeanOrSTD)  
#--10299 obs of 88 variables
dim(ExtractMeanOrSTD)
#View(ExtractMeanOrSTD)

# Names the value of activity column with descriptive names
ExtractMeanOrSTD$Activity <- as.character(ExtractMeanOrSTD$Activity)
for (i in 1:6){
ExtractMeanOrSTD$Activity[ExtractMeanOrSTD$Activity == i] <- as.character(activitylabels[i,2])
}
  
ExtractMeanOrSTD$Activity <- as.factor(ExtractMeanOrSTD$Activity)
#str(ExtractMeanOrSTD$Activity)

#Appropriately labels the data set with descriptive variable names
#before the replacement of short-names by long names
names(ExtractMeanOrSTD)
#Replace the data
names(ExtractMeanOrSTD)<-gsub("Acc", "Accelerometer", names(ExtractMeanOrSTD))
names(ExtractMeanOrSTD)<-gsub("Gyro", "Gyroscope", names(ExtractMeanOrSTD))
names(ExtractMeanOrSTD)<-gsub("BodyBody", "Body", names(ExtractMeanOrSTD))
names(ExtractMeanOrSTD)<-gsub("Mag", "Magnitude", names(ExtractMeanOrSTD))
names(ExtractMeanOrSTD)<-gsub("^t", "Time", names(ExtractMeanOrSTD))
names(ExtractMeanOrSTD)<-gsub("^f", "Frequency", names(ExtractMeanOrSTD))
names(ExtractMeanOrSTD)<-gsub("tBody", "TimeBody", names(ExtractMeanOrSTD))
names(ExtractMeanOrSTD)<-gsub("-mean()", "Mean", names(ExtractMeanOrSTD), ignore.case = TRUE)
names(ExtractMeanOrSTD)<-gsub("-std()", "STD", names(ExtractMeanOrSTD), ignore.case = TRUE)
names(ExtractMeanOrSTD)<-gsub("-freq()", "Frequency", names(ExtractMeanOrSTD), ignore.case = TRUE)
names(ExtractMeanOrSTD)<-gsub("angle", "Angle", names(ExtractMeanOrSTD))
names(ExtractMeanOrSTD)<-gsub("gravity", "Gravity", names(ExtractMeanOrSTD))
#View the data again
names(ExtractMeanOrSTD)

#From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
#library(data.table)
ExtractMeanOrSTD$Subject <- as.factor(ExtractMeanOrSTD$Subject)
ExtractMeanOrSTD <- data.table(ExtractMeanOrSTD)
#View(ExtractMeanOrSTD)

#create the tidy data and order it 

tidyData <- aggregate(. ~Subject + Activity, ExtractMeanOrSTD, mean)
tidyData <- tidyData[order(tidyData$Subject,tidyData$Activity),]
write.table(tidyData, file = "./data/Tidy.txt", row.names = FALSE)

