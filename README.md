# Getting and Cleaning Data: Course Project

## Introduction

The Coursera course "Getting and Cleaning data", part of the Data Science specialization. The assignment will show that the student can do the following: 1) create a tidy data set as described in the insturction, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations.

## Important Infomration about the raw data

The features (561 of them) are unlabeled and can be found in the x_test.txt. The activity labels are in the y_test.txt file. The test subjects are in the subject_test.txt file.

The features (561 of them) are unlabeled and can be found in the y_train.txt. The activity labels are in the y_train.txt file. The train subjects are in the subject_train.txt file.


## Important Infomration about the script and the tidy dataset

A script called run_analysis.R which will merge the test and training sets together. You must have the following befor you can begin: script:

          The UCI HAR Dataset 
                    
          The UCI HAR Dataset available in a directory on your disc
                    
After merging testing and training, labels are added and only columns that have to do with mean and standard deviation are kept.

The script will create a tidy data set containing the means of all the columns per test subject and per activity. This tidy dataset will be written to a file called tidyset.txt, which can also be found in this repository.

## Important Information about the Code Book

The CodeBook.md file explains the transformations performed and the resulting data and variables.
