Codebook: Coursera-Getting and Cleaning Data Project

Original Data

The original data was collected from Samsung Galaxy S smartphone accelerometers. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Information from the web site:
Source:

Jorge L. Reyes-Ortiz(1,2), Davide Anguita(1), Alessandro Ghio(1), Luca Oneto(1) and Xavier Parra(2)
1 - Smartlab - Non-Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova, Genoa (I-16145), Italy. 
2 - CETpD - Technical Research Centre for Dependency Care and Autonomous Living
Universitat Politècnica de Catalunya (BarcelonaTech). Vilanova i la Geltrú (08800), Spain
activityrecognition '@' smartlab.ws

Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

A video of the experiment including an example of the 6 recorded activities with one of the participants can be seen in the following link: https://www.youtube.com/watch?v=XOEN9W05_4A

An updated version of this dataset can be found at http://archive.ics.uci.edu/ml/datasets/Smartphone-Based+Recognition+of+Human+Activities+and+Postural+Transitions It includes labels of postural transitions between activities and also the full raw inertial signals instead of the ones pre-processed into windows.


Attribute Information:

For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

---------------------------------------------------------------------------------------

The raw dataset was modified according to project instructions:
1. Training and test sets were merged to create one data set.
2. Extracted measurements on the mean and standard deviation for each measurement (columns that included mean() and std() in the column names).
3. Added the descriptive activity names to the activities in the data set
4. Labeled the data set with descriptive variable names.
5. Created a second, independent tidy data set that includes the average of each variable for each activity and each subject.

Files utilized:
activity_labels.txt - description of each activity
features.txt - column names for data
subject_test.txt - subject number
subject_train.txt - subject number
X_test.txt - raw data
X_train. txt - raw data
Y_test.txt - activity number
Y_train.txt - activity number

The final dataset is saved in the file "ProjMean.txt". The columns include:
Column 1: Subject - list of subject numbers
Column 2: Activity - the activity, sitting, walking, etc.
Column 3 - Column 68: Data, tBodyAcc-mean()-X, tBodyAcc-mean()-Y, tBodyAcc-mean()-Z, etc.

