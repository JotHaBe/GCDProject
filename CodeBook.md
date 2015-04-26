This is a code book that describes the variables, the data, and any transformations or work performed to clean up the data.

## Description of the raw Dataset

The raw dataset was downloaded from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The high level 'data set description' was found at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones and the details were in the raw data set's 'README.txt' file.

The high level description states that the research team compiled a Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

### The raw dataset includes the following files:

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


## Description of the Transformation

- The transformation process consists of the following five steps:
 - Merge the training and the test sets to create one dataset.
 - Extract only the measurements on the mean and standard deviation for each measurement. 
 - Create descriptive activity names to name the activities in the dataset
 - Appropriately label the data set with descriptive variable names. 
 - From the above data set, create an independent tidy data set with the average of each variable for each activity and each subject.



## Description of the Tidy Dataset 

The tidy dataset is stored in file: averages_data.txt.

The following two columns uniquely identify a row (Subject, Activity)

- Subject holds an integer ID
- Activity holds one of the following strings (laying, sitting, standing, walking, walkingUpstairs, walkingDownstairs).

The remaining columns are floating point numbers that represent the measured mean [the name contains 'Mean'] or
the standard deviation [the name contains 'StdDev'] of a specific variable.

 The column names used the following abbreviations:

 - Time to denote the time domain
 - Freq to denote the frequency domain
 - Acc for acceleration
 - X, Y, Z to denote the X, Y, Z axis
 - Gyro for gyroscope
 - Mag for magnitude
 
The 66 measurement columns are listed below:

  - TimeBodyAccMeanX
  - TimeBodyAccMeanY
  - TimeBodyAccMeanZ
  - TimeBodyAccStdDevX
  - TimeBodyAccStdDevY
  - TimeBodyAccStdDevZ
  - TimeGravityAccMeanX
  - TimeGravityAccMeanY
  - TimeGravityAccMeanZ
  - TimeGravityAccStdDevX
  - TimeGravityAccStdDevY
  - TimeGravityAccStdDevZ
  - TimeBodyAccJerkMeanX
  - TimeBodyAccJerkMeanY
  - TimeBodyAccJerkMeanZ
  - TimeBodyAccJerkStdDevX
  - TimeBodyAccJerkStdDevY
  - TimeBodyAccJerkStdDevZ
  - TimeBodyGyroMeanX
  - TimeBodyGyroMeanY
  - TimeBodyGyroMeanZ
  - TimeBodyGyroStdDevX
  - TimeBodyGyroStdDevY
  - TimeBodyGyroStdDevZ
  - TimeBodyGyroJerkMeanX
  - TimeBodyGyroJerkMeanY
  - TimeBodyGyroJerkMeanZ
  - TimeBodyGyroJerkStdDevX
  - TimeBodyGyroJerkStdDevY
  - TimeBodyGyroJerkStdDevZ
  - TimeBodyAccMagMean
  - TimeBodyAccMagStdDev
  - TimeGravityAccMagMean
  - TimeGravityAccMagStdDev
  - TimeBodyAccJerkMagMean
  - TimeBodyAccJerkMagStdDev
  - TimeBodyGyroMagMean
  - TimeBodyGyroMagStdDev
  - TimeBodyGyroJerkMagMean
  - TimeBodyGyroJerkMagStdDev
  - FreqBodyAccMeanX
  - FreqBodyAccMeanY
  - FreqBodyAccMeanZ
  - FreqBodyAccStdDevX
  - FreqBodyAccStdDevY
  - FreqBodyAccStdDevZ
  - FreqBodyAccJerkMeanX
  - FreqBodyAccJerkMeanY
  - FreqBodyAccJerkMeanZ
  - FreqBodyAccJerkStdDevX
  - FreqBodyAccJerkStdDevY
  - FreqBodyAccJerkStdDevZ
  - FreqBodyGyroMeanX
  - FreqBodyGyroMeanY
  - FreqBodyGyroMeanZ
  - FreqBodyGyroStdDevX
  - FreqBodyGyroStdDevY
  - FreqBodyGyroStdDevZ
  - FreqBodyAccMagMean
  - FreqBodyAccMagStdDev
  - FreqBodyAccJerkMagMean
  - FreqBodyAccJerkMagStdDev
  - FreqBodyGyroMagMean
  - FreqBodyGyroMagStdDev
  - FreqBodyGyroJerkMagMean
  - FreqBodyGyroJerkMagStdDev
