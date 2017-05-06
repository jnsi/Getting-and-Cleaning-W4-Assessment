# CODE_BOOK <h1>



## Original data sources      


The original source for this data set is the "Human Activity Recognition Using Smartphones Data Set" produced by the Center for Machine Learning and Intelligent Systems found at this URL: 
[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://url.com/ "Title")

This data set is a subset of the above source data. It was cleaned into a tidy dataset following the instructions of the "Getting and Cleaning Data" Coursera week 4 assignment.

The set of variables that were estimated from these signals are:

Mean: Mean value
std: Standard deviation

This code book describes the TidyDataSet.txt. 
The data set is the average of each feature for each activity and each subject.


# Feature Selection<h1> 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern:
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag  


# Observations 

* Subject - id of the test subject. There are 30 test subjects
* Activity - the activity performed by the subject


 
# Activities<h1>    
1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

# Variables<h1>  
    

# Class of variables<h2>    

1.  Numeric
2.  Factor

# Variables by name<h2>   


* tBodyAccMeanX
* tBodyAccMeanY
* tBodyAccMeanZ
* tBodyAccstdX
* tBodyAccstdY
* tBodyAccstdZ
* tGravityAccMeanX
* tGravityAccMeanY
* tGravityAccMeanZ
* tGravityAccstdX
* tGravityAccstdY
* tGravityAccstdZ
* tBodyAccJerkMeanX
* tBodyAccJerkMeanY
* tBodyAccJerkMeanZ
* tBodyAccJerkstdX
* tBodyAccJerkstdY
* tBodyAccJerkstdZ
* tBodyGyroMeanX
* tBodyGyroMeanY
* tBodyGyroMeanZ
* tBodyGyrostdX
* tBodyGyrostdY
* tBodyGyrostdZ
* tBodyGyroJerkMeanX
* tBodyGyroJerkMeanY
* tBodyGyroJerkMeanZ
* TBodyGyroJerkstdX
* tBodyGyroJerkstdY
* TBodyGyroJerkstdZ
* tBodyAccMagMean
* tBodyAccMagstd
* tGravityAccMagMean
* tGravityAccMagstd
* TBodyAccJerkMagMean
* tBodyAccJerkMagstd
* TBodyGyroMagMean
* tBodyGyroMagstd
* tBodyGyroJerkMagMean
* tBodyGyroJerkMagstd
* fBodyAccMeanX
* fBodyAccMeanY
* fBodyAccMeanZ
* fBodyAccstdX
 * FBodyAccstdY
* fBodyAccstdZ
* fBodyAccMeanFreqX
* fBodyAccMeanFreqY
* fBodyAccMeanFreqZ
* fBodyAccJerkMeanX
* fBodyAccJerkMeanY
* fBodyAccJerkMeanZ
* fBodyAccJerkstdX
* fBodyAccJerkstdY
* fBodyAccJerkstdZ
* fBodyAccJerkMeanFreqX
* fBodyAccJerkMeanFreqY
* fBodyAccJerkMeanFreqZ
* fBodyGyroMeanX
* fBodyGyroMeanY
* fBodyGyroMeanZ
* fBodyGyrostdX
* fBodyGyrostdY
* FBodyGyrostdZ
* fBodyGyroMeanFreqX
* fBodyGyroMeanFreqY
* fBodyGyroMeanFreqZ
* fBodyAccMagMean
* fBodyAccMagstd
* fBodyAccMagMeanFreq
 * fBodyBodyAccJerkMagMean
* fBodyBodyAccJerkMagstd
*  fBodyBodyAccJerkMagMeanFreq
* fBodyBodyGyroMagMean
* fBodyBodyGyroMagstd
* fBodyBodyGyroMagMeanFreq
* fBodyBodyGyroJerkMagMean
* fBodyBodyGyroJerkMagstd
* fBodyBodyGyroJerkMagMeanFreq
* angletBodyAccMean_gravity
 * angletBodyAccJerkMean_gravityMean
* angletBodyGyroMean_gravityMean
 * angletBodyGyroJerkMean_gravityMean
* angleX_gravityMean
* angleY_gravityMean
* angleZ_gravityMean


