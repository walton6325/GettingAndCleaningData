## Combine the training and the test sets to create one data set.
##-------------------------------------------------------------------------------
## step 1: Create path, create direcotry, download zip file from website and unzip
path_rf <- file.path("C:/Users/zina6/OneDrive/Documents/myzipfile" , "UCI HAR Dataset")
files<-list.files(path_rf, recursive=TRUE)
##-------------------------------------------------------------------------------
##  
## step 2: create direcotry, download zip file from website and unzip
if(!file.exists("./myzipfile")) dir.create("C:/Users/zina6/OneDrive/Documents/myzipfile")
fileurl<- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileurl,destfile = "C:/Users/zina6/OneDrive/Documents/myzipfile/mydata.zip",mode="wb")
unzip ("C:/Users/zina6/OneDrive/Documents/myzipfile/mydata.zip", 
       exdir = "./myzipfile")
##-------------------------------------------------------------------------------
## step 3: load files below into R
## X Feature Data
## Y Activity Data 
## Subject data
##-------------------------------------------------------------------------------
train.x       <- read.table("C:/Users/zina6/OneDrive/Documents/myzipfile/UCI HAR Dataset/train/x_train.txt")
train.y       <- read.table("C:/Users/zina6/OneDrive/Documents/myzipfile/UCI HAR Dataset/train/y_train.txt")
train.subject <- read.table("C:/Users/zina6/OneDrive/Documents/myzipfile/UCI HAR Dataset/train/subject_train.txt")
test.x        <- read.table("C:/Users/zina6/OneDrive/Documents/myzipfile/UCI HAR Dataset/test/x_test.txt")
test.y        <-read.table("C:/Users/zina6/OneDrive/Documents/myzipfile/UCI HAR Dataset/test/y_test.txt")
test.subject  <- read.table("C:/Users/zina6/OneDrive/Documents/myzipfile/UCI HAR Dataset/test/subject_test.txt")
#-------------------------------------------------------------------------------
## step 4: merge train and test data
trainData <- cbind(train.subject, train.y, train.x)
testData <- cbind(test.subject, test.y, test.x)
AllData <- rbind(trainData, testData)
##-------------------------------------------------------------------------------
## 5. Extract only the measurements on the mean and standard deviation for each measurement. 

## 5.1: load feature name into R
featureName <- read.table("C:/Users/zina6/OneDrive/Documents/myzipfile/UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)[,2]

## 5.2:  extract mean and standard deviation of each measurements
featureIndex <- grep(("mean\\(\\)|std\\(\\)"), featureName)
finalData <- AllData[, c(1, 2, featureIndex+2)]
colnames(finalData) <- c("subject", "activity", featureName[featureIndex])

##-------------------------------------------------------------------------------
## 6. Uses descriptive activity names to name the activities in the data set

## 6.1: load activity data into R
activityName <- read.table("C:/Users/zina6/OneDrive/Documents/myzipfile/UCI HAR Dataset/activity_labels.txt")

## 6.2: replace 1 to 6 with activity names
finalData$activity <- factor(finalData$activity, levels = activityName[,1], labels = activityName[,2])

##-------------------------------------------------------------------------------
## 7. Naming the variables with descriptive variable names.
names(finalData) <- gsub("\\()", "", names(finalData))
names(finalData) <- gsub("^t", "time", names(finalData))
names(finalData) <- gsub("^f", "frequence", names(finalData))
names(finalData) <- gsub("-mean", "Mean", names(finalData))
names(finalData) <- gsub("-std", "Std", names(finalData))

##-------------------------------------------------------------------------------
## 8. creates a second, tidy data set with the average of each variable for each activity and each subject.

groupData <- finalData %>%
  group_by(subject, activity) %>%
  summarise_each(funs(mean))

## 9. Write text file
write.table(groupData, "TidySet.txt", row.names = FALSE)
## 10. End of Project - Getting and Cleaning Data