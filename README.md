# GettingAndCleaningData
This project uses the Human Activity Recognition Using Smartphones dataset from the UCI Machine Learning Repository. The goal is to clean and prepare a tidy dataset that can be used for further analysis.
- run_analysis.R : Script that performs the data cleaning
- tidy_data.txt : Final tidy dataset
- CodeBook.md : Description of variables and transformations
- The script performs the following steps:

1. Merges the training and test datasets into one dataset
2. Extracts only the measurements on the mean and standard deviation
3. Replaces activity IDs with descriptive activity names
4. Labels the dataset with descriptive variable names
5. Creates a second tidy dataset with the average of each variable for each activity and each subject
To run the script:

1. Place the dataset in your working directory
2. Open R or RStudio
3. Run run_analysis.R
4. The output file tidy_data.txt will be generated
