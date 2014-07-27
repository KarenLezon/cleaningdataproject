## This R code reads in the Human Activity Recognition Using Smartphones Dataset
## (see README for more information.) The test and training datasets are combined,
## the labels and variables are made more readable, and the mean and standard deviation 
## measurements are retained form the entire dataset. Finally, the measurements are 
## averaged over the subject, activity pairs. 

## Set Working Directory
setwd("C:/Users/Karen/Documents/Karen/Coursea/DataScience/GettingAndCleaningData")

list.files("./data/UCI HAR Dataset")
list.files("./data/UCI HAR Dataset/test")
list.files("./data/UCI HAR Dataset/train")

## Read in features and labels keys
features<- read.table("./data/UCI HAR Dataset/features.txt", header=F)
labels<- read.table("./data/UCI HAR Dataset/activity_labels.txt", header=F)

## Read in test subjects, labels, and data; add column names
subjecttest<- read.table("./data/UCI HAR Dataset/test/subject_test.txt", header=F)
names(subjecttest)<-"subject"
xtest<- read.table("./data/UCI HAR Dataset/test/x_test.txt", header=F)
names(xtest)<-features[,2]
ytest<- read.table("./data/UCI HAR Dataset/test/y_test.txt", header=F)
names(ytest)<-"activity"


## Read in training subjects, labels, and data; add column names
subjecttrain<- read.table("./data/UCI HAR Dataset/train/subject_train.txt", header=F)
names(subjecttrain)<-"subject"
xtrain<- read.table("./data/UCI HAR Dataset/train/x_train.txt", header=F)
names(xtrain)<-features[,2]
ytrain<- read.table("./data/UCI HAR Dataset/train/y_train.txt", header=F)
names(ytrain)<-"activity"

## combine test subjects, labels and data into a single data frame
testtemp<-cbind(subjecttest,ytest,xtest)

## combine training subjects, labels and data into a single data frame
traintemp<-cbind(subjecttrain,ytrain,xtrain)

## combine training data and test data
combineddata<-rbind(testtemp,traintemp)

## substitute activity numbers for activity
combineddata$activity<-gsub(1,"WALKING",combineddata$activity)
combineddata$activity<-gsub("2","WALKING_UPSTAIRS",combineddata$activity)
combineddata$activity<-gsub("3","WALKING_DOWNSTAIRS",combineddata$activity)
combineddata$activity<-gsub("4","SITTING",combineddata$activity)
combineddata$activity<-gsub("5","STANDING",combineddata$activity)
combineddata$activity<-gsub("6","LAYING",combineddata$activity)

## Determine wanted columns -- the mean and standard deviation measurements
wantedcolmean<-grep("mean()",features$V2,value=TRUE,fixed=TRUE)
wantedcolstd<-grep("std()",features$V2,value=TRUE,fixed=TRUE)
## Create dataset with wanted cols only
wanteddata<-subset(combineddata, select=c("subject","activity",wantedcolmean,wantedcolstd) )

## Average all measurements for each subject, activity pair.
wdt<-data.table(wanteddata)
averageddata<-wdt[,lapply(.SD, mean),by="subject,activity"]

## Change names of measurement variables to denote the average of those values
## for each subject, activity pair
names(averageddata)[3:68]<-paste("avg-of-",names(averageddata)[3:68], sep="")

## Write results out to a file
write.table(averageddata, file="averagedActivityData.txt")
