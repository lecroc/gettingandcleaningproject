## Getting and Cleaning Data Course Project

# Open libraries

library(dplyr)
library(tidyr)
library(stringr)

# Get Data

file<-"Dataset.zip"

if(!file.exists(file)){fileURL<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

download.file(fileURL, destfile = "./Dataset.zip")

unzip("Dataset.zip")} else("file already there")



# read in features and activities

features<-read.table("UCI HAR Dataset/features.txt")

featurelabels<-as.character(features[,2])

featurekeep<-grep(".*mean*|*.std*", featurelabels)

featurelabels<-featurelabels[featurekeep]

featurelabels<-gsub('[-()]', '', featurelabels)

featurelabels<-tolower(featurelabels)



activities<-read.table("UCI HAR Dataset/activity_labels.txt")

activitylabels<-as.character(activities[,2])

activitylabels<-tolower(activitylabels)

activitylabels<-gsub("_","",activitylabels)


# Read in test and train data sets

trainsub<-read.table("UCI HAR Dataset/train/subject_train.txt")

trainact<-read.table("UCI HAR Dataset/train/y_train.txt")

train<-read.table("UCI HAR Dataset/train/x_train.txt")[featurekeep]

train<-cbind(trainsub, trainact, train)

testsub<-read.table("UCI HAR Dataset/test/subject_test.txt")

testact<-read.table("UCI HAR Dataset/test/y_test.txt")

test<-read.table("UCI HAR Dataset/test/x_test.txt")[featurekeep]

test<-cbind(testsub, testact, test)

alldata<-rbind(train, test)

names(alldata)<-c("subject", "activity", featurelabels)

alldata$subject<-as.factor(alldata$subject)

alldata$activity<-factor(alldata$activity, levels=activities[,1], labels=activitylabels)

ad1<-alldata %>%
     group_by(subject, activity) %>%
     summarise_all(funs(mean))

write.table(ad1, file="./tidydata.txt", row.names=F)


