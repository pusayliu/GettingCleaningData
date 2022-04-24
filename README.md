# GettingCleaningData
HAR.csv is a transformed data set from Human Activity Recognition Using Smartphones Data Set of UCI. 

Please refer to CodeBook.md for the steps of data cleaning and transformation for HAR.txt.
The script to perform the mentioned data processing steps in CodeBook.md is included in run_analysis.R.

The data transformation and cleaning steps to produce the HAR.txt are described as below:
1. Read in the neaded data sets
2. Using cbind and rbind, merge all the tables into one table called 'df'.
3. Map the features names in features.txt to the column name.
4. Extract columns that contain the mean and std measurements.
5. Map the descriptive activity names in activity_labels.txt to activity column.
6. Cleaning column names:

   (1) Removing the starting 't'.
   
   (2) Removing the duplicated words 'Body'
   
7. Group the data set by columnes of activity and subject, and calculate the mean in each group.
8. Export the txt file.
