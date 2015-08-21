setwd("~/Dropbox/Datascience/Universite_Johns-Hopkins/Obtenir_et_trier_les_donnees/Repo")

#  1 - Merges the training and the test sets to create one data set.

Xtest <- read.table("./data/UCI HAR Dataset/test/X_test.txt", sep="", header = FALSE)
Ytest <- read.table("./data/UCI HAR Dataset/test/Y_test.txt", sep="", header = FALSE)

Xtrain <- read.table("./data/UCI HAR Dataset/train/X_train.txt", sep="", header = FALSE)
Ytrain <- read.table("./data/UCI HAR Dataset/train/Y_train.txt", sep="", header = FALSE)

features_names <- read.table("./data/UCI HAR Dataset/features.txt", sep="", header = FALSE)
activity_labels <- read.table("./data/UCI HAR Dataset/activity_labels.txt", sep="", header = FALSE)

Xmerged <- rbind(Xtest,Xtrain) 
Ymerged <- rbind(Ytest,Ytrain) 

names(Xmerged) <- features_names[,2]

# 2 - Extracts only the measurements on the mean and standard deviation for each measurement. 

# find column index containing mean & std
mean <- grep("-mean()",features_names[,2],fixed=TRUE)
std <- grep("-std()",features_names[,2],fixed=TRUE)

length(mean)
length(std)
features_names[mean,2]
features_names[std,2]

?grep()

class(mean)

# 3- Uses descriptive activity names to name the activities in the data set

# 4 - Appropriately labels the data set with descriptive variable names. 

# 5 - From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.



1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING


For each record in the dataset it is provided: 
  - Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.