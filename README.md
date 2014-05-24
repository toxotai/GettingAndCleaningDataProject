##GettingAndCleaningDataProject
===============================

The purpose of this project is to demonstrate my ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. I've submited:

 1) a tidy data set as described below,

 2) a link to this Github repository with my script for performing the analysis, and

 3) a code book that describes the variables, the data, and any transformations or work that I've performed to clean up the data called CodeBook.md.

I've also included this README.md in the repo with my scripts. This repo explains how all of the scripts work and how they are connected.  

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

I've created one R script called run_analysis.R that does the following: 
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive activity names. 
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

First of all, I've loaded all the data I need from the following files:
* UCI HAR Dataset/activity_labels.txt for activity names and codes
* UCI HAR Dataset/features.txt for feature names and codes
* UCI HAR Dataset/train/y_train.txt for the list of activity labels in training set
* UCI HAR Dataset/train/subject_train.txt for the subject id who performed the activity for each training sample
* UCI HAR Dataset/train/X_train for training set
* UCI HAR Dataset/test/y_test.txt for the list of activity labels in testing set
* UCI HAR Dataset/test/subject_test.txt for the subject id who performed the activity for each test sample
* UCI HAR Dataset/test/X_test for testing set

Next, I've extracted only the measurements on the mean and standard deviation for each sample.
I've also created a vector of feature names this step

Next, I've added the column of subject id and activity id to test data set and to training data set in order to merge them together.
I've also added names to this two columns to simplify and clarify operations with them.

After that, I've merged the training and the test sets and created one data set and sorted it by Subject Id.

I've added descriptive names of activities in the data set next step.

Next, I've computed averages of each variable for each activity and each subject.

Finally, I've saved this data set to the file "result.txt"
