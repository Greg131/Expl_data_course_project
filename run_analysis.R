# Samsung data are assumed to be in your working directory : 
# with one subdirectory "train" containing the training set 
# and one subdirectory "test" containing the test set
# setwd("~/Dropbox/Datascience/Universite_Johns-Hopkins/Obtenir_et_trier_les_donnees/Repo/data/UCI HAR Dataset")

#--------------------------------------------------------------------------------------------
# Reading training and test set from files 
#--------------------------------------------------------------------------------------------

Xtest <- read.table("./test/X_test.txt", sep="", header = FALSE)
Ytest <- read.table("./test/Y_test.txt", sep="", header = FALSE)
Subjecttest <- read.table("./test/subject_test.txt", sep="", header = FALSE)

Xtrain <- read.table("./train/X_train.txt", sep="", header = FALSE)
Ytrain <- read.table("./train/Y_train.txt", sep="", header = FALSE)
Subjecttrain <- read.table("./train/subject_train.txt", sep="", header = FALSE)

#--------------------------------------------------------------------------------------------
# 1 - Merging the training and the test sets to create one data set.
#--------------------------------------------------------------------------------------------

X <- rbind(Xtest,Xtrain) 
Y <- rbind(Ytest,Ytrain) 
Subject <- rbind(Subjecttest,Subjecttrain) 


#--------------------------------------------------------------------------------------------
# 2 - Extraction of the measurements on the mean and standard deviation for each measurement. 
#--------------------------------------------------------------------------------------------
features_names <- read.table("./features.txt", sep="", header = FALSE)
# building column index vector for features related to mean and standard deviation
?grep()
mean <- grep("-mean()",features_names[,2],fixed=TRUE, ignore.case = FALSE)
std <- grep("-std()",features_names[,2],fixed=TRUE)
length(mean)
length(std)
features_names[mean,2]  # to check the accruacy and exhaustivity of the selection
features_names[std,2]

X <- X[,c(mean,std)]
#--------------------------------------------------------------------------------------------
# 3 - Appropriately labelling the data set with descriptive variable names. 
#--------------------------------------------------------------------------------------------
# removing/replacing special caractere  - ( ) in the variable names
features_names[,2] <- gsub("-","_",features_names[,2])
features_names[,2] <- gsub("\\(","",features_names[,2])
features_names[,2] <- gsub("\\)","",features_names[,2])
features_names[,2] 
names(X) <- features_names[c(mean,std),2]
names(Y) <- "activity"
names(Subject) <- "subject"


#--------------------------------------------------------------------------------------------
# 4 - Uses descriptive activity names to name the activities in the data set
#--------------------------------------------------------------------------------------------
activity_labels <- read.table("./activity_labels.txt", sep="", header = FALSE)
Y$activity <- activity_labels[Y$activity,2]

# Adding Subject id and activity information in the data set
DataSet <- cbind(Subject,Y,X)
names(DataSet)

#--------------------------------------------------------------------------------------------
# 5 - Getting independent tidy data set MeanByActivitySubject
# with the average of each variable for each activity and each subject.
#--------------------------------------------------------------------------------------------

library(dplyr)
activitysubject <- group_by(DataSet, activity, subject)
#summarise(activitysubject, mean_tBodyAcc_mean_X = mean(tBodyAcc_mean_X,na.rm=TRUE), mean_tBodyAcc_mean_Y = mean(tBodyAcc_mean_Y,na.rm=TRUE))

AverageByActivitySubject <- summarise_each(activitysubject, funs(mean))
names(AverageByActivitySubject)
# Renaming column
names(AverageByActivitySubject)[3:68] <- paste(rep("average_",66),names(AverageByActivitySubject)[3:68],sep="")
names(AverageByActivitySubject)

?write.table() 
# Writing the tidy data set MeanByActivitySubject in "AverageByActivitySubject.txt" of working directory
write.table(AverageByActivitySubject, file = "./AverageByActivitySubject.txt", row.name=FALSE )
# Write features of the data set in a txt files
write.table(paste(1:68,names(AverageByActivitySubject), sep = " - "), file = "./Features_names_AverageByActivitySubject.txt", row.name=FALSE )


