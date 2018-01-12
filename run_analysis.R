##run_analysis.R
## Author: Scott Zwick, 12/31/2017
## Description: Getting & Cleaning Data project 
##     1. Merges the training and the test sets to create one data set.
##     2. Extracts only the measurements on the mean and standard deviation
##        for each measurement.
##     3. Uses descriptive activity names to name the activities in the data set
##     4. Appropriately labels the data set with descriptive variable names.
##     5. From the data set in step 4, creates a second, independent tidy data
##        set with the average of each variable for each activity and each
##        subject.
##
## Use of this dataset in publications must be acknowledged by referencing the
## following publication [1] 
## [1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and 
## Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a 
## Multiclass Hardware-Friendly Support Vector Machine. International Workshop
## of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
## This dataset is distributed AS-IS and no responsibility implied or explicit
## can be addressed to the authors or their institutions for its use or misuse.
## Any commercial use is prohibited. Jorge L. Reyes-Ortiz, Alessandro Ghio,
## Luca Oneto, Davide Anguita. November 2012.

library(dplyr)
library(lubridate)
library(readxl)
library(tidyr)
library(xlsx)

setwd("~/R/Coursera/Coursera-Cleaning_Data")

## Read data files
     acc_labs <- read.table("activity_labels.txt")
     acc_labs <- acc_labs[,2]                     ##Remove Col1 to read in names
     features <- read.table("features.txt")
     features <- features[,2]
     subj_tst <- read.table("subject_test.txt")
     subj_trn <- read.table("subject_train.txt")
     x_tst <- read.table("X_test.txt")
     x_trn <- read.table("X_train.txt")
     y_tst <- read.table("Y_test.txt")
     y_trn <- read.table("Y_train.txt")
##
## subject data
##
     subj_df <- rbind(subj_tst, subj_trn)
     colnames(subj_df) <- "Subject"
##
## y data
##
     ydata_df <- rbind(y_tst, y_trn)
     ydata_df[, 2] <- acc_labs[match(ydata_df[,1])]
     colnames(ydata_df) <- "Act_No"
     ydata_df$Activity <- acc_labs[ydata_df$Act_No]
     ydata_df <- ydata_df$Activity
##
## x data
##
     xdata_df <- rbind(x_tst, x_trn)
     colnames(xdata_df) <- features
     ##
     ## remove columns except for mean()
     ##
          xdata1_df <- xdata_df[grepl("*mean()*", names(xdata_df))]
          xdata1_df <- xdata1_df[!grepl("*meanFreq*", names(xdata1_df))]##
     ##
     ## remove columns except for std()
     ##
          xdata2_df <- xdata_df[grepl("*std()*", names(xdata_df))]
     ##
     ## combine xdata files
     ##
          xdatafin_df <-cbind(xdata1_df, xdata2_df)
##
## combine all files
##
     proj_df <- cbind(subj_df, ydata_df, xdatafin_df)
     colnames(proj_df)[2] <- "Activity"

