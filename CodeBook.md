# Getting and Cleaning Data Code Book

This code book summarizes the data found in the tidydata.txt file

# Factor Variables

There are two factor variables, subject and activity.

The subject variable is the id number for the subject in the study.  There were a total of 30 subjects.  There was no other identification of the subjects other than their number in the source data.

The activity variable desctibes the activity the subject was doing when the feature measurements were recorded.  There are six different activities listed below.  The names have been tidied from their original format by removing "_" underscores and converting to all lower case letters.

# Activities

 - walking
 - walkingupstairs
 - walkingdownstairs
 - sitting
 - standing
 - laying

# Feature variables

86 of the 561 features were kept from the original data set.  They represent the mean and standard deviation of the various measurements collected from the phone's accelerometers.  The original measurements were normalized and bound between -1 and 1.  The features in tidydata.txt have been further summarized to be the mean of all measurements by subject and activity.  

The names for each feature have been tidied by eliminating any symbols and converting all letters to lower case.  Feature names in the data set are as follows:

"tbodyaccmeanx"
"tbodyaccmeany"
"tbodyaccmeanz"
"tbodyaccstdx"
"tbodyaccstdy"
"tbodyaccstdz"
"tgravityaccmeanx"
"tgravityaccmeany"
"tgravityaccmeanz"
"tgravityaccstdx"
"tgravityaccstdy"
"tgravityaccstdz"
"tbodyaccjerkmeanx"
"tbodyaccjerkmeany"
"tbodyaccjerkmeanz"
"tbodyaccjerkstdx"
"tbodyaccjerkstdy"
"tbodyaccjerkstdz"
"tbodygyromeanx"
"tbodygyromeany"
"tbodygyromeanz"
"tbodygyrostdx"
"tbodygyrostdy"
"tbodygyrostdz"
"tbodygyrojerkmeanx"
"tbodygyrojerkmeany"
"tbodygyrojerkmeanz"
"tbodygyrojerkstdx"
"tbodygyrojerkstdy"
"tbodygyrojerkstdz"
"tbodyaccmagmean"
"tbodyaccmagstd"
"tgravityaccmagmean"
"tgravityaccmagstd"
"tbodyaccjerkmagmean"
"tbodyaccjerkmagstd"
"tbodygyromagmean"
"tbodygyromagstd"
"tbodygyrojerkmagmean"
"tbodygyrojerkmagstd"
"fbodyaccmeanx"
"fbodyaccmeany"
"fbodyaccmeanz"
"fbodyaccstdx"
"fbodyaccstdy"
"fbodyaccstdz"
"fbodyaccmeanfreqx"
"fbodyaccmeanfreqy"
"fbodyaccmeanfreqz"
"fbodyaccjerkmeanx"
"fbodyaccjerkmeany"
"fbodyaccjerkmeanz"
"fbodyaccjerkstdx"
"fbodyaccjerkstdy"
"fbodyaccjerkstdz"
"fbodyaccjerkmeanfreqx"
"fbodyaccjerkmeanfreqy"
"fbodyaccjerkmeanfreqz"
"fbodygyromeanx"
"fbodygyromeany"
"fbodygyromeanz"
"fbodygyrostdx"
"fbodygyrostdy"
"fbodygyrostdz"
"fbodygyromeanfreqx"
"fbodygyromeanfreqy"
"fbodygyromeanfreqz"
"fbodyaccmagmean"
"fbodyaccmagstd"
"fbodyaccmagmeanfreq"
"fbodybodyaccjerkmagmean"
"fbodybodyaccjerkmagstd"
"fbodybodyaccjerkmagmeanfreq"
"fbodybodygyromagmean"
"fbodybodygyromagstd"
"fbodybodygyromagmeanfreq"
"fbodybodygyrojerkmagmean"
"fbodybodygyrojerkmagstd"
"fbodybodygyrojerkmagmeanfreq"
"angletbodyaccmean,gravity"
"angletbodyaccjerkmean,gravitymean"
"angletbodygyromean,gravitymean"
"angletbodygyrojerkmean,gravitymean"
"anglex,gravitymean"
"angley,gravitymean"
"anglez,gravitymean"

Further information on the variables in the source data set can be downloaded here:

http://archive.ics.uci.edu/ml/machine-learning-databases/00240/

