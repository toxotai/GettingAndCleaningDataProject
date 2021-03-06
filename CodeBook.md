﻿#GENERAL INFORMATION
-----------------------

After downloading and executing script (see readMe.md file for details) you will get result.txt file with processed and cleaned data set.
The original data set is UCI HAR dataset [1]. You need to place this dataset to your working directory in order to get the result.

Here is some information about UCI HAR dataset: 

Human Activity Recognition Using Smartphones Dataset
Version 1.0

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universitа degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:

- 'README.txt'
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 

- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

#DATA COLLECTION DESCRIPTION
---------------

result.txt file contain 180 rows and 81 columns: each row coresponds to one person and one activity tipe.
First two columns stand for subject id and activity. Remaining cols stand for average for 79 features.

#CODE BOOK
---------------

| Name                            | Value              | Description                                                           |
|---------------------------------|--------------------|-----------------------------------------------------------------------|
| Subject.Id                      | 1...30             | Unique id for each person involved                                    |
| Activit                         | LAYING             | Activity type                                                         |
|                                 | SITTING            |                                                                       |
|                                 | STANDING           |                                                                       |
|                                 | WALKING            |                                                                       |
|                                 | WALKING_DOWNSTAIRS |                                                                       |
|                                 | WALKING_UPSTAIRS   |                                                                       |
| tBodyAcc-mean()-X               | [-1,1]             | Mean Body Acceleration in X direction in time domain                  |
| tBodyAcc-mean()-Y               | [-1,1]             | Mean Body Acceleration in Y direction in time domain                  |
| tBodyAcc-mean()-Z               | [-1,1]             | Mean Body Acceleration in Z direction in time domain                  |
| tBodyAcc-std()-X                | [-1,1]             | Standard Deviation of Body Acceleration in X direction in time domain |
| tBodyAcc-std()-Y                | [-1,1]             | Standard Deviation of Body Acceleration in Y direction in time domain |
| tBodyAcc-std()-Z                | [-1,1]             | Standard Deviation of Body Acceleration in Z direction in time domain |
| tGravityAcc-mean()-X            | [-1,1]             | Mean Gravity Acceleration in X direction in time domain               |
| tGravityAcc-mean()-Y            | [-1,1]             | Mean Gravity Acceleration in Y direction in time domain               |
| tGravityAcc-mean()-Z            | [-1,1]             | Mean Gravity Acceleration in Z direction in time domain               |
| tGravityAcc-std()-X             | [-1,1]             | Standard Deviation of Gravity Acceleration in X direction in time domain               |                                                                      |
| tGravityAcc-std()-Y             | [-1,1]             | Standard Deviation of Gravity Acceleration in Y direction in time domain                                                                      |
| tGravityAcc-std()-Z             | [-1,1]             | Standard Deviation of Gravity Acceleration in Z direction in time domain                                                                      |
| tBodyAccJerk-mean()-X           | [-1,1]             | Mean Body Acceleration Jerk in X direction in time domain             |
| tBodyAccJerk-mean()-Y           | [-1,1]             | Mean Body Acceleration Jerk in Y direction in time domain                              |
| tBodyAccJerk-mean()-Z           | [-1,1]             | Mean Body Acceleration Jerk in Z direction in time domain                               |
| tBodyAccJerk-std()-X            | [-1,1]             | Standard Deviation of Body Acceleration Jerk in X direction in time domain                                                                      |
| tBodyAccJerk-std()-Y            | [-1,1]             | Standard Deviation of Body Acceleration Jerk in Y direction in time domain                                                                      |
| tBodyAccJerk-std()-Z            | [-1,1]             | Standard Deviation of Body Acceleration Jerk in Z direction in time domain                                                                      |
| tBodyGyro-mean()-X              | [-1,1]             | Mean Body Gyroscope value in X direction in time domain                            |
| tBodyGyro-mean()-Y              | [-1,1]             | Mean Body Gyroscope value in Y direction in time domain                             |
| tBodyGyro-mean()-Z              | [-1,1]             | Mean Body Gyroscope value in Z direction in time domain                             |
| tBodyGyro-std()-X               | [-1,1]             | Standard Deviation of Body Gyroscope value in X direction in time domain                                                                      |
| tBodyGyro-std()-Y               | [-1,1]             | Standard Deviation of Body Gyroscope value in Y direction in time domain                                                                       |
| tBodyGyro-std()-Z               | [-1,1]             | Standard Deviation of Body Gyroscope value in Z direction in time domain                                                                      |
| tBodyGyroJerk-mean()-X          | [-1,1]             | Mean Body Gyroscope value Jerk in X direction in time domain                                  |
| tBodyGyroJerk-mean()-Y          | [-1,1]             | Mean Body Gyroscope value Jerk in Y direction in time domain                                  |
| tBodyGyroJerk-mean()-Z          | [-1,1]             | Mean Body Gyroscope value Jerk in Z direction in time domain                                  |
| tBodyGyroJerk-std()-X           | [-1,1]             | Standard Deviation of Body Gyroscope value Jerk in X direction in time domain                                                                      |
| tBodyGyroJerk-std()-Y           | [-1,1]             | Standard Deviation of Body Gyroscope value Jerk in Y direction in time domain                                                                      |
| tBodyGyroJerk-std()-Z           | [-1,1]             | Standard Deviation of Body Gyroscope value Jerk in Z direction in time domain                                                                      |
| tBodyAccMag-mean()              | [-1,1]             | Mean Body Acceleration Magnitude in time domain                     |
| tBodyAccMag-std()               | [-1,1]             | Standard Deviation of Body Acceleration Magnitude in time domain    |
| tGravityAccMag-mean()           | [-1,1]             | Mean Gravity Acceleration Magnitude in time domain                                      |
| tGravityAccMag-std()            | [-1,1]             | Standard Deviation of Gravity Acceleration Magnitude in time domain          |
| tBodyAccJerkMag-mean()          | [-1,1]             | Mean Body Acceleration Jerk Magnitude in time domain                                         |
| tBodyAccJerkMag-std()           | [-1,1]             | Standard Deviation of Body Acceleration Jerk Magnitude in time domain                                                                      |
| tBodyGyroMag-mean()             | [-1,1]             | Mean Body Gyroscope Magnitude in time domain                      |
| tBodyGyroMag-std()              | [-1,1]             | Standard Deviation of Body Gyroscope Magnitude in time domain                                                                      |
| tBodyGyroJerkMag-mean()         | [-1,1]             | Mean Body Gyroscope Jerk Magnitude in time domain                                                                      |
| tBodyGyroJerkMag-std()          | [-1,1]             | Standard Deviation of Body Gyroscope Jerk Magnitude in time domain                                                                      |
| fBodyAcc-mean()-X               | [-1,1]             | Mean Body Acceleration in X direction in frequency domain                               |
| fBodyAcc-mean()-Y               | [-1,1]             | Mean Body Acceleration in Y direction in frequency domain                                                                      |
| fBodyAcc-mean()-Z               | [-1,1]             | Mean Body Acceleration in Z direction in frequency domain                                                                      |
| fBodyAcc-std()-X                | [-1,1]             | Standard Deviation of Body Acceleration in X direction in frequency domain                                                                      |
| fBodyAcc-std()-Y                | [-1,1]             | Standard Deviation of Body Acceleration in Y direction in frequency domain                                                                      |
| fBodyAcc-std()-Z                | [-1,1]             | Standard Deviation of Body Acceleration in Z direction in frequency domain                                                                      |
| fBodyAcc-meanFreq()-X           | [-1,1]             | Mean Frequency of Body Acceleration in X direction                                                                      |
| fBodyAcc-meanFreq()-Y           | [-1,1]             | Mean Frequency of Body Acceleration in Y direction                                                                      |
| fBodyAcc-meanFreq()-Z           | [-1,1]             | Mean Frequency of Body Acceleration in Z direction                                                                      |
| fBodyAccJerk-mean()-X           | [-1,1]             | Mean Body Acceleration Jerk in X direction in frequency domain                                                                      |
| fBodyAccJerk-mean()-Y           | [-1,1]             | Mean Body Acceleration Jerk in Y direction in frequency domain                                                                      |
| fBodyAccJerk-mean()-Z           | [-1,1]             | Mean Body Acceleration Jerk in Z direction in frequency domain                                                                      |
| fBodyAccJerk-std()-X            | [-1,1]             | Standard Deviation of Body Acceleration Jerk in X direction in frequency domain                                                                      |
| fBodyAccJerk-std()-Y            | [-1,1]             | Standard Deviation of Body Acceleration Jerk in Y direction in frequency domain                                                                      |
| fBodyAccJerk-std()-Z            | [-1,1]             | Standard Deviation of Body Acceleration Jerk in Z direction in frequency domain                                                                      |
| fBodyAccJerk-meanFreq()-X       | [-1,1]             | Mean Frequency of Body Acceleration Jerk in X direction                                                                      |
| fBodyAccJerk-meanFreq()-Y       | [-1,1]             | Mean Frequency of Body Acceleration Jerk in Y direction                                                                      |
| fBodyAccJerk-meanFreq()-Z       | [-1,1]             | Mean Frequency of Body Acceleration Jerk in Z direction                                                                      |
| fBodyGyro-mean()-X              | [-1,1]             | Mean Body Gyroscope value in X direction in frequency domain                                                                      |
| fBodyGyro-mean()-Y              | [-1,1]             | Mean Body Gyroscope value in Y direction in frequency domain                                                                      |
| fBodyGyro-std()-X               | [-1,1]             | Standard Deviation of Body Gyroscope value in X direction in frequency domain                                                                      |
| fBodyGyro-std()-Y               | [-1,1]             | Standard Deviation of Body Gyroscope value in Y direction in frequency domain                                                                      |
| fBodyGyro-std()-Z               | [-1,1]             | Standard Deviation of Body Gyroscope value in Z direction in frequency domain                                                                      |
| fBodyGyro-meanFreq()-X          | [-1,1]             | Mean Frequency of Body Gyroscope value in X direction                                                                      |
| fBodyGyro-meanFreq()-Y          | [-1,1]             | Mean Frequency of Body Gyroscope value in Y direction                                                                      |
| fBodyGyro-meanFreq()-Z          | [-1,1]             | Mean Frequency of Body Gyroscope value in Z direction                                                                      |
| fBodyAccMag-mean()              | [-1,1]             | Mean Body Acceleration Magnitude in frequency domain                                                                      |
| fBodyAccMag-std()               | [-1,1]             | Standard Deviation of Body Acceleration Magnitude in frequency domain                                                                      |
| fBodyAccMag-meanFreq()          | [-1,1]             | Mean Frequency of Body Acceleration Magnitude                                                                      |
| fBodyAccJerkMag-std()       | [-1,1]             |   Standard Deviation of Body Acceleration Jerk Magnitude in frequency domain                                                                    |
| fBodyAccJerkMag-meanFreq()  | [-1,1]             |   Mean Frequency of Body Acceleration Jerk Magnitude                                                                    |
| fBodyGyroMag-mean()         | [-1,1]             |  Mean Body Gyroscope Magnitude in frequency domain                                                                     |
| fBodyGyroMag-std()          | [-1,1]             |  Standard Deviation of Body Gyroscope Magnitude in frequency domain                                                                     |
| fBodyGyroMag-meanFreq()     | [-1,1]             |  Mean Frequency of Body Gyroscope Magnitude                                                                     |
| fBodyGyroJerkMag-mean()     | [-1,1]             |  Mean Body Gyroscope Jerk Magnitude in frequency domain                                                                     |
| fyBodyGyroJerkMag-std()      | [-1,1]             | Standard Deviation of Body Gyroscope Jerk Magnitude in frequency domain                                                                      |
| fBodyGyroJerkMag-meanFreq() | [-1,1]             | Mean Frequency of Body Gyroscope Jerk Magnitude |
