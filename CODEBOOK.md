#  Code Book - Getting and Cleaning Data
* `A script called run_analysis.R which will merge the test and training sets together. This script will used that that reside in UCI 
* `HAR Dataset which must be extracted. 
## After merging testing and training, labels are added and only columns that have to do with mean and standard deviation are kept.
## The script will create a tidy data set containing the means of all the columns per test subject and ##per activity. This tidy dataset ## will be written to called tidyset.txt, which can also be found in this ##repository.
## Processing steps
## 1.	Create Path to data file
## 2.	Create directory, down zip files and unzip files
## 3.	Load files into a .txt file
##    i.	  X Train
##    ii.  	Y Train
##    iii.	Subject Train
##    iv.	  X Test
##    v.	  Y Test
##    vi.	  Subject Test
##    vii.	Features
##    viii.	Activity Labels
## 4.	Merge X, Y and Subject files
## 5.	Extract the measurement for mean and standard deviation
## 6.	Add descriptive names for activities
## 7.	Add descriptive names for the variables
## 8.	Create dataset with average for each variable
## 9.	Write the tidyset to disc
## *********   Helpful Information *********
## Identifiers
## •	subject     The ID of the test subject
## •	activity     The type of activity performed when the corresponding measurements were taken
## Tidy data set
## Tidy data set contains the average of all feature standard deviation and mean values of the raw dataset. Original variable names were ## modified:
## •	Replaced -mean with Mean
## •	Replaced -std with Std
## Activity Labels
## •	WALKING 
## •	WALKING_UPSTAIRS 
## •	WALKING_DOWNSTAIRS
## •	SITTING 
## •	STANDING
## •	LAYING 

## Raw Measurements
* `•	tBodyAccMeanX
* `•	tBodyAccMeanY
* `•	tBodyAccMeanZ
* `•	tBodyAccStdX
## •	tBodyAccStdY
## •	tBodyAccStdZ
## •	tGravityAccMeanX
## •	tGravityAccMeanY
## •	tGravityAccMeanZ
## •	tGravityAccStdX
## •	tGravityAccStdY
## •	tGravityAccStdZ
## •	tBodyAccJerkMeanX
## •	tBodyAccJerkMeanY
## •	tBodyAccJerkMeanZ
## •	tBodyAccJerkStdX
## •	tBodyAccJerkStdY
## •	tBodyAccJerkStdZ
## •	tBodyGyroMeanX
## •	tBodyGyroMeanY
## •	tBodyGyroMeanZ
## •	tBodyGyroStdX
## •	tBodyGyroStdY
## •	tBodyGyroStdZ
## •	tBodyGyroJerkMeanX
## •	tBodyGyroJerkMeanY
## •	tBodyGyroJerkMeanZ
## •	tBodyGyroJerkStdX
## •	tBodyGyroJerkStdY
## •	tBodyGyroJerkStdZ
## •	tBodyAccMagMean
## •	tBodyAccMagStd
## •	tGravityAccMagMean
## •	tGravityAccMagStd
## •	tBodyAccJerkMagMean
## •	tBodyAccJerkMagStd
## •	tBodyGyroMagMean
## •	tBodyGyroMagStd
## •	tBodyGyroJerkMagMean
## •	tBodyGyroJerkMagStd
## •	fBodyAccMeanX
## •	fBodyAccMeanY
## •	fBodyAccMeanZ
## •	fBodyAccStdX
## •	fBodyAccStdY
## •	fBodyAccStdZ
## •	fBodyAccMeanFreqX
## •	fBodyAccMeanFreqY
## •	fBodyAccMeanFreqZ
## •	fBodyAccJerkMeanX
## •	fBodyAccJerkMeanY
## •	fBodyAccJerkMeanZ
## •	fBodyAccJerkStdX
## •	fBodyAccJerkStdY
## •	fBodyAccJerkStdZ
## •	fBodyAccJerkMeanFreqX
## •	fBodyAccJerkMeanFreqY
## •	fBodyAccJerkMeanFreqZ
## •	fBodyGyroMeanX
## •	fBodyGyroMeanY
## •	fBodyGyroMeanZ
## •	fBodyGyroStdX
## •	fBodyGyroStdY
## •	fBodyGyroStdZ
## •	fBodyGyroMeanFreqX
## •	fBodyGyroMeanFreqY
## •	fBodyGyroMeanFreqZ
## •	fBodyAccMagMean
## •	fBodyAccMagStd
## •	fBodyAccMagMeanFreq
## •	fBodyBodyAccJerkMagMean
## •	fBodyBodyAccJerkMagStd
## •	fBodyBodyAccJerkMagMeanFreq
## •	fBodyBodyGyroMagMean
## •	fBodyBodyGyroMagStd
## •	fBodyBodyGyroMagMeanFreq
## •	fBodyBodyGyroJerkMagMean
## •	fBodyBodyGyroJerkMagStd
## •	fBodyBodyGyroJerkMagMeanFreq
## •	Processed Measurements
## •	timeBodyAccMeanX
## •	timeBodyAccMeanY
## •	timeBodyAccMeanZ
## •	timeBodyAccStdX
## •	timeBodyAccStdY
## •	timeBodyAccStdZ
## •	timeGravityAccMeanX
## •	timeGravityAccMeanY
## •	timeGravityAccMeanZ
## •	timeGravityAccStdX
## •	timeGravityAccStdY
## •	timeGravityAccStdZ
## •	timeBodyAccJerkMeanX
## •	timeBodyAccJerkMeanY
## •	timeBodyAccJerkMeanZ
## •	timeBodyAccJerkStdX
## •	timeBodyAccJerkStdY
## •	timeBodyAccJerkStdZ
## •	timeBodyGyroMeanX
## •	timeBodyGyroMeanY
## •	timeBodyGyroMeanZ
## •	timeBodyGyroStdX
## •	timeBodyGyroStdY
## •	timeBodyGyroStdZ
## •	timeBodyGyroJerkMeanX
## •	timeBodyGyroJerkMeanY
## •	timeBodyGyroJerkMeanZ
## •	timeBodyGyroJerkStdX
## •	timeBodyGyroJerkStdY
## •	timeBodyGyroJerkStdZ
## •	timeBodyAccMagMean
## •	timeBodyAccMagStd
## •	timeGravityAccMagMean
## •	timeGravityAccMagStd
## •	timeBodyAccJerkMagMean
## •	timeBodyAccJerkMagStd
## •	timeBodyGyroMagMean
## •	timeBodyGyroMagStd
## •	timeBodyGyroJerkMagMean
## •	timeBodyGyroJerkMagStd
## •	frequenceBodyAccMeanX
## •	frequenceBodyAccMeanY
## •	frequenceBodyAccMeanZ
## •	frequenceBodyAccStdX
## •	frequenceBodyAccStdY
## •	frequenceBodyAccStdZ
## •	frequenceBodyAccMeanFreqX
## •	frequenceBodyAccMeanFreqY
## •	frequenceBodyAccMeanFreqZ
## •	frequenceBodyAccJerkMeanX
## •	frequenceBodyAccJerkMeanY
## •	frequenceBodyAccJerkMeanZ
## •	frequenceBodyAccJerkStdX
## •	frequenceBodyAccJerkStdY
## •	frequenceBodyAccJerkStdZ
## •	frequenceBodyAccJerkMeanFreqX
## •	frequenceBodyAccJerkMeanFreqY
## •	frequenceBodyAccJerkMeanFreqZ
## •	frequenceBodyGyroMeanX
## •	frequenceBodyGyroMeanY
## •	frequenceBodyGyroMeanZ
## •	frequenceBodyGyroStdX
## •	frequenceBodyGyroStdY
## •	frequenceBodyGyroStdZ
## •	frequenceBodyGyroMeanFreqX
## •	frequenceBodyGyroMeanFreqY
## •	frequenceBodyGyroMeanFreqZ
## •	frequenceBodyAccMagMean
## •	frequenceBodyAccMagStd
## •	frequenceBodyAccMagMeanFreq
## •	frequenceBodyBodyAccJerkMagMean
## •	frequenceBodyBodyAccJerkMagStd
## •	frequenceBodyBodyAccJerkMagMeanFreq
## •	frequenceBodyBodyGyroMagMean
## •	frequenceBodyBodyGyroMagStd
## •	frequenceBodyBodyGyroMagMeanFreq
## •	frequenceBodyBodyGyroJerkMagMean
## •	frequenceBodyBodyGyroJerkMagStd
## •	frequenceBodyBodyGyroJerkMagMeanFreq
  

