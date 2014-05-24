#GENERAL INFORMATION
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
| tGravityAcc-std()-X             | [-1,1]             |                                                                       |
| tGravityAcc-std()-Y             | [-1,1]             |                                                                       |
| tGravityAcc-std()-Z             | [-1,1]             |                                                                       |
| tBodyAccJerk-mean()-X           | [-1,1]             |                                                                       |
| tBodyAccJerk-mean()-Y           | [-1,1]             |                                                                       |
| tBodyAccJerk-mean()-Z           | [-1,1]             |                                                                       |
| tBodyAccJerk-std()-X            | [-1,1]             |                                                                       |
| tBodyAccJerk-std()-Y            | [-1,1]             |                                                                       |
| tBodyAccJerk-std()-Z            | [-1,1]             |                                                                       |
| tBodyGyro-mean()-X              | [-1,1]             |                                                                       |
| tBodyGyro-mean()-Y              | [-1,1]             |                                                                       |
| tBodyGyro-mean()-Z              | [-1,1]             |                                                                       |
| tBodyGyro-std()-X               | [-1,1]             |                                                                       |
| tBodyGyro-std()-Y               | [-1,1]             |                                                                       |
| tBodyGyro-std()-Z               | [-1,1]             |                                                                       |
| tBodyGyroJerk-mean()-X          | [-1,1]             |                                                                       |
| tBodyGyroJerk-mean()-Y          | [-1,1]             |                                                                       |
| tBodyGyroJerk-mean()-Z          | [-1,1]             |                                                                       |
| tBodyGyroJerk-std()-X           | [-1,1]             |                                                                       |
| tBodyGyroJerk-std()-Y           | [-1,1]             |                                                                       |
| tBodyGyroJerk-std()-Z           | [-1,1]             |                                                                       |
| tBodyAccMag-mean()              | [-1,1]             |                                                                       |
| tBodyAccMag-std()               | [-1,1]             |                                                                       |
| tGravityAccMag-mean()           | [-1,1]             |                                                                       |
| tGravityAccMag-std()            | [-1,1]             |                                                                       |
| tBodyAccJerkMag-mean()          | [-1,1]             |                                                                       |
| tBodyAccJerkMag-std()           | [-1,1]             |                                                                       |
| tBodyGyroMag-mean()             | [-1,1]             |                                                                       |
| tBodyGyroMag-std()              | [-1,1]             |                                                                       |
| tBodyGyroJerkMag-mean()         | [-1,1]             |                                                                       |
| tBodyGyroJerkMag-std()          | [-1,1]             |                                                                       |
| fBodyAcc-mean()-X               | [-1,1]             |                                                                       |
| fBodyAcc-mean()-Y               | [-1,1]             |                                                                       |
| fBodyAcc-mean()-Z               | [-1,1]             |                                                                       |
| fBodyAcc-std()-X                | [-1,1]             |                                                                       |
| fBodyAcc-std()-Y                | [-1,1]             |                                                                       |
| fBodyAcc-std()-Z                | [-1,1]             |                                                                       |
| fBodyAcc-meanFreq()-X           | [-1,1]             |                                                                       |
| fBodyAcc-meanFreq()-Y           | [-1,1]             |                                                                       |
| fBodyAcc-meanFreq()-Z           | [-1,1]             |                                                                       |
| fBodyAccJerk-mean()-X           | [-1,1]             |                                                                       |
| fBodyAccJerk-mean()-Y           | [-1,1]             |                                                                       |
| fBodyAccJerk-mean()-Z           | [-1,1]             |                                                                       |
| fBodyAccJerk-std()-X            | [-1,1]             |                                                                       |
| fBodyAccJerk-std()-Y            | [-1,1]             |                                                                       |
| fBodyAccJerk-std()-Z            | [-1,1]             |                                                                       |
| fBodyAccJerk-meanFreq()-X       | [-1,1]             |                                                                       |
| fBodyAccJerk-meanFreq()-Y       | [-1,1]             |                                                                       |
| fBodyAccJerk-meanFreq()-Z       | [-1,1]             |                                                                       |
| fBodyGyro-mean()-X              | [-1,1]             |                                                                       |
| fBodyGyro-mean()-Y              | [-1,1]             |                                                                       |
| fBodyGyro-std()-X               | [-1,1]             |                                                                       |
| fBodyGyro-std()-Y               | [-1,1]             |                                                                       |
| fBodyGyro-std()-Z               | [-1,1]             |                                                                       |
| fBodyGyro-meanFreq()-X          | [-1,1]             |                                                                       |
| fBodyGyro-meanFreq()-Y          | [-1,1]             |                                                                       |
| fBodyGyro-meanFreq()-Z          | [-1,1]             |                                                                       |
| fBodyAccMag-mean()              | [-1,1]             |                                                                       |
| fBodyAccMag-std()               | [-1,1]             |                                                                       |
| fBodyAccMag-meanFreq()          | [-1,1]             |                                                                       |
| fBodyBodyAccJerkMag-std()       | [-1,1]             |                                                                       |
| fBodyBodyAccJerkMag-meanFreq()  | [-1,1]             |                                                                       |
| fBodyBodyGyroMag-mean()         | [-1,1]             |                                                                       |
| fBodyBodyGyroMag-std()          | [-1,1]             |                                                                       |
| fBodyBodyGyroMag-meanFreq()     | [-1,1]             |                                                                       |
| fBodyBodyGyroJerkMag-mean()     | [-1,1]             |                                                                       |
| fBodyBodyGyroJerkMag-std()      | [-1,1]             |                                                                       |
| fBodyBodyGyroJerkMag-meanFreq() | [-1,1]             |                      
