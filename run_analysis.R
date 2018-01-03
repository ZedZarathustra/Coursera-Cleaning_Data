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
acc_x_tst <- read.csv("body_acc_x_test.txt")
acc_y_tst <- read.csv("body_acc_y_test.txt")
acc_z_tst <- read.csv("body_acc_z_test.txt")
gyro_x_tst <- read.csv("body_gyro_x_test.txt")
gyro_y_tst <- read.csv("body_gyro_y_test.txt")
gyro_z_tst <- read.csv("body_gyro_z_test.txt")
tot_x_tst <- read.csv("total_acc_x_test.txt")
tot_y_tst <- read.csv("total_acc_y_test.txt")
tot_z_tst <- read.csv("total_acc_z_test.txt")
acc_x_trn <- read.csv("body_acc_x_train.txt")
acc_y_trn <- read.csv("body_acc_y_train.txt")
acc_z_trn <- read.csv("body_acc_z_train.txt")
gyro_x_trn <- read.csv("body_gyro_x_train.txt")
gyro_y_trn <- read.csv("body_gyro_y_train.txt")
gyro_z_trn <- read.csv("body_gyro_z_train.txt")
tot_x_trn <- read.csv("total_acc_x_train.txt")
tot_y_trn <- read.csv("total_acc_y_train.txt")
tot_z_trn <- read.csv("total_acc_z_train.txt")
