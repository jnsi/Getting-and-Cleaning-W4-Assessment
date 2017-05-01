# Getting-and-Cleaning-W4-Assessment
Week 4 peer assessment
==================================================================
Human Activity Recognition Using Smartphones Dataset - 

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.


THE DATASET OF THE PROJECT FOR PEER ASSESSMENT : it includes the following files:
=============================================================================

- 'README.md'

- 'run_analysis.R': the script which shows the step by the step of the project submitted

- 'tidy.txt': the independent tidy data set with the average of each variable for each activity and each subject.

- 'CodeBook.md': describes the variables, the data, and any transformations or work performed to clean up the data from the extracted data with only mean, std, activity, subject columns


THE STEP BY STEP SCRIPT
***************************
***************************

Script question 1: Merges the training and the test sets to create one data set.
1 Check if data directory exits
2 Load library downloader uses to download thefile; data.table to read large data, dplyr to organize data to obtain tidy data
3 Download the zip file and unzip it in the specified directory
4 Date the download of the file
5 Read the metadata from activity_labels and features files with the name of the features and the name of the activities respectively; 
6 Read training and test data sets with 3 files each for subject, activity and features
7 Use rbind fonction to clip data together by subject, then by activity and finally by features to merge data
8 Rename the columns V1 to V561 of features data set based on the names of featuresName related to metadata
9 Name clearly the columns for subject and activity 

Script question 2: Extracts only the measurements on the mean and standard deviation for each measurement
1- Search the entries that include mean() or std() anywhere in the name of columns
2- create a subset of data with all the rows from mergeData and including only the required columns with mean, sdt, activity and subject
3- View the dimension of the extracted data dim() and the content with str()

Script question 3 : Uses descriptive activity names to name the activities in the data set
1- The activity columns is integer type :  first transform the type of the data to character to this column and 2nd factor the activity variable

Script question 4 : Appropriately labels the data set with descriptive variable names
1- View the names of variables of extract data set with names()
2- Replace all the short-names by long names : acc - > Accelerometer; the same action on gyro, bodybody, f, t, Mag

Script question 5 : From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
1- Coerce the type of columns subject to factor
2- Create the tidy data as the average of each variable for each activity and each subject
3- Sort tidy data first by subject
4- write tidy data in a text file

