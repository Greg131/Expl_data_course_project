# The Code Book
## Getting and cleaning the data - course project

This book is descibing each variable and its values in AverageByActivitySubject.txt

Subject id  
=================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years.

Volunteers are identified by a numerical id from 1 to 30


Activity  
=================

Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.
Activity is coded with a factor variable of 6 levels :

* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING


Features 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


tBodyAcc-XYZ

tGravityAcc-XYZ

tBodyAccJerk-XYZ

tBodyGyro-XYZ

tBodyGyroJerk-XYZ

tBodyAccMag

tGravityAccMag

tBodyAccJerkMag

tBodyGyroMag

tBodyGyroJerkMag

fBodyAcc-XYZ

fBodyAccJerk-XYZ

fBodyGyro-XYZ

fBodyAccMag

fBodyAccJerkMag

fBodyGyroMag

fBodyGyroJerkMag


The set of variables that were estimated from these signals are: 

mean: Mean value
std: Standard deviation

Then average of each feature is claculated for each activity and subject


Features units

=================
Units are those of International System of Unitst

tBodyAcc-XYZ related features are in m/s2

tGravityAcc-XYZ m/s2

tBodyAccJerk-XYZ m/s2

tBodyGyro-XYZ rd/s

tBodyGyroJerk-XYZ rd/s

tBodyAccMag m/s2

tGravityAccMag Hz

tBodyAccJerkMag Hz

tBodyGyroMag Hz

tBodyGyroJerkMag Hz

fBodyAcc-XYZ m/s2

fBodyAccJerk-XYZ m/s2

fBodyGyro-XYZ rd/s

fBodyAccMag Hz

fBodyAccJerkMag Hz

fBodyGyroMag Hz

fBodyGyroJerkMag Hz



=================
The full list of 68 columns of AverageByActivitySubject data set is then 

1 - activity

2 - subject

3 - average_tBodyAcc_mean_X 

4 - average_tBodyAcc_mean_Y

5 - average_tBodyAcc_mean_Z

6 - average_tGravityAcc_mean_X

7 - average_tGravityAcc_mean_Y

8 - average_tGravityAcc_mean_Z

9 - average_tBodyAccJerk_mean_X

10 - average_tBodyAccJerk_mean_Y

11 - average_tBodyAccJerk_mean_Z

12 - average_tBodyGyro_mean_X

13 - average_tBodyGyro_mean_Y

14 - average_tBodyGyro_mean_Z

15 - average_tBodyGyroJerk_mean_X

16 - average_tBodyGyroJerk_mean_Y

17 - average_tBodyGyroJerk_mean_Z

18 - average_tBodyAccMag_mean

19 - average_tGravityAccMag_mean

20 - average_tBodyAccJerkMag_mean

21 - average_tBodyGyroMag_mean

22 - average_tBodyGyroJerkMag_mean

23 - average_fBodyAcc_mean_X

24 - average_fBodyAcc_mean_Y

25 - average_fBodyAcc_mean_Z

26 - average_fBodyAccJerk_mean_X

27 - average_fBodyAccJerk_mean_Y

28 - average_fBodyAccJerk_mean_Z

29 - average_fBodyGyro_mean_X

30 - average_fBodyGyro_mean_Y

31 - average_fBodyGyro_mean_Z

32 - average_fBodyAccMag_mean

33 - average_fBodyBodyAccJerkMag_mean

34 - average_fBodyBodyGyroMag_mean

35 - average_fBodyBodyGyroJerkMag_mean

36 - average_tBodyAcc_std_X

37 - average_tBodyAcc_std_Y

38 - average_tBodyAcc_std_Z

39 - average_tGravityAcc_std_X

40 - average_tGravityAcc_std_Y

41 - average_tGravityAcc_std_Z

42 - average_tBodyAccJerk_std_X

43 - average_tBodyAccJerk_std_Y

44 - average_tBodyAccJerk_std_Z

45 - average_tBodyGyro_std_X

46 - average_tBodyGyro_std_Y

47 - average_tBodyGyro_std_Z

48 - average_tBodyGyroJerk_std_X

49 - average_tBodyGyroJerk_std_Y

50 - average_tBodyGyroJerk_std_Z

51 - average_tBodyAccMag_std

52 - average_tGravityAccMag_std

53 - average_tBodyAccJerkMag_std

54 - average_tBodyGyroMag_std

55 - average_tBodyGyroJerkMag_std

56 - average_fBodyAcc_std_X

57 - average_fBodyAcc_std_Y

58 - average_fBodyAcc_std_Z

59 - average_fBodyAccJerk_std_X

60 - average_fBodyAccJerk_std_Y

61 - average_fBodyAccJerk_std_Z

62 - average_fBodyGyro_std_X

63 - average_fBodyGyro_std_Y

64 - average_fBodyGyro_std_Z

65 - average_fBodyAccMag_std

66 - average_fBodyBodyAccJerkMag_std

67 - average_fBodyBodyGyroMag_std

68 - average_fBodyBodyGyroJerkMag_std


