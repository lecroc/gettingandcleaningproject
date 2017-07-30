## Getting and Cleaning Data Course Project

# Open libraries

library(dplyr)

# Section 1 Get Data

file<-"Dataset.zip"  # store the zip file name to variable "file"

## if the file does not exist in the working directory, download the file into the working directory.
## if the file is already there, print "file already there" to the console

if(!file.exists(file)){fileURL<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

download.file(fileURL, destfile = "./Dataset.zip")

unzip("Dataset.zip")} else("file already there")



# Section 2 Read in features and activities datasets

features<-read.table("UCI HAR Dataset/features.txt") # read in data features

featurelabels<-as.character(features[,2])  # create a character vector of the feature names

featurekeep<-grep(".*mean*|*.std*", featurelabels, ignore.case = T) # create a position vector of the features I want to keep in the final data set ignore.case is important

featurelabels<-featurelabels[featurekeep] # subset the featurelabels to only those I want to keep

featurelabels<-gsub('[-(),]', '', featurelabels) # remove symbols from feature labels

featurelabels<-tolower(featurelabels) # remove uppercase letters from feature labels



activities<-read.table("UCI HAR Dataset/activity_labels.txt") # read in activity data set

activitylabels<-as.character(activities[,2]) # create a character vector of the activity names

activitylabels<-tolower(activitylabels) # make the activity names all lower case

activitylabels<-gsub("_","",activitylabels) # remove symbols from activity names


# Section 3 Read in test and train data sets

# Training data

trainsub<-read.table("UCI HAR Dataset/train/subject_train.txt") # read in training set subjects

trainact<-read.table("UCI HAR Dataset/train/y_train.txt") # read in training set activities

train<-read.table("UCI HAR Dataset/train/x_train.txt")[featurekeep] # read in features, selecting only those I want to keep

train<-cbind(trainsub, trainact, train) # combine all three data frames into one

# Test data

testsub<-read.table("UCI HAR Dataset/test/subject_test.txt") # read in test set subjects

testact<-read.table("UCI HAR Dataset/test/y_test.txt") # read in test set activities

test<-read.table("UCI HAR Dataset/test/x_test.txt")[featurekeep] # read in test set features, selecting only those I want to keep

test<-cbind(testsub, testact, test) # combine all three data frames into one

alldata<-rbind(train, test) # create a new data frame - alldata by combining the rows of test and train

names(alldata)<-c("subject", "activity", featurelabels) # add tidy column names to alldata

alldata$subject<-as.factor(alldata$subject) # convert the subject column to a factor

alldata$activity<-factor(alldata$activity, levels=activities[,1], labels=activitylabels) # convert the activity column to a factor

# Use chaining commands in dyplr package to summarize feature value means by subject and activity:

ad1<-alldata %>%
     group_by(subject, activity) %>%
     summarise_all(funs(mean))


# Write out ad1 data frame as tidydata.txt to working directory:

write.table(ad1, file="./tidydata.txt", row.names=F)


