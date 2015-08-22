setwd("~/Dropbox/Datascience/Universite_Johns-Hopkins/Obtenir_et_trier_les_donnees/Repo/data/UCI HAR Dataset")

#  1 - Merges the training and the test sets to create one data set.

Xtest <- read.table("./test/X_test.txt", sep="", header = FALSE)
Ytest <- read.table("./test/Y_test.txt", sep="", header = FALSE)
Subjecttest <- read.table("./test/subject_test.txt", sep="", header = FALSE)

Xtrain <- read.table("./train/X_train.txt", sep="", header = FALSE)
Ytrain <- read.table("./train/Y_train.txt", sep="", header = FALSE)
Subjecttrain <- read.table("./train/subject_train.txt", sep="", header = FALSE)

Xmerged <- rbind(Xtest,Xtrain) 
Ymerged <- rbind(Ytest,Ytrain) 
Subjectmerged <- rbind(Subjecttest,Subjecttrain) 



#--------------------------------------------------------------------------------------------
# 4 - Appropriately labels the data set with descriptive variable names. 
#--------------------------------------------------------------------------------------------
features_names <- read.table("./features.txt", sep="", header = FALSE)
names(Xmerged) <- features_names[,2]
names(Ymerged) <- "activity"
names(Subjectmerged) <- "subject"


#--------------------------------------------------------------------------------------------
# 2 - Extracts only the measurements on the mean and standard deviation for each measurement. 
#--------------------------------------------------------------------------------------------

# build column index vector for features related to mean and standard deviation
mean <- grep("-mean()",features_names[,2],fixed=TRUE)
std <- grep("-std()",features_names[,2],fixed=TRUE)

length(mean)
length(std)
features_names[mean,2]
features_names[std,2]
?grep()

class(mean)
XSubset <- Xmerged[,c(mean,std)]


#--------------------------------------------------------------------------------------------
# 3- Uses descriptive activity names to name the activities in the data set
#--------------------------------------------------------------------------------------------
activity_labels <- read.table("./activity_labels.txt", sep="", header = FALSE)



# Adding Subject and Y the the X data set

DataSet <- cbind(Subjectmerged,XSubset,Ymerged)
names(DataSet)


# 5 - From the data set in step 4, creates a second, independent tidy data set 
# with the average of each variable for each activity and each subject.


