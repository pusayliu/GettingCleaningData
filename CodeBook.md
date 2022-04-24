
The variables of transformed data set are described as below:

The data comes from experiments carried out with 30 volunteers between 19-48 years old. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) while wearing a smartphone (Samsung Galaxy S II) on the waist. Using the embedded sensor signals (accelerometer and gyroscope) on smartphone, the time domain signals of 3-axial linear acceleration and 3-axial angular velocity were captured at a constant rate of 50Hz.

A Fast Fourier Transform (FFT) was applied to some of the time domain signals and prefix 'f' to those new variables to indicate frequency domain signals. 
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The data transformation and cleaning steps to produce the HAR.csv are described as below:
1. Read in the neaded data sets
2. Using cbind and rbind, merge all the tables into one table called 'df'.
3. Map the features names in features.txt to the column name.
4. Extract columns that contain the mean and std measurements.
5. Map the descriptive activity names in activity_labels.txt to activity column.
6. Cleaning column names:

   (1) Removing the starting 't'.
   
   (2) Removing the duplicated words 'Body'
   
7. Group the data set by columnes of activity and subject, and calculate the mean in each group.
8. Export the csv file.


