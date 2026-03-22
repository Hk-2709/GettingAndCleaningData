
The dataset used is the Human Activity Recognition Using Smartphones dataset. It contains sensor data collected from 30 subjects performing various physical activities using a smartphone.
- subject: Identifier of the subject (1 to 30)
- activity: Type of activity performed (e.g., WALKING, SITTING)
- The remaining variables are measurements of mean and standard deviation of signals collected from accelerometer and gyroscope sensors.

Naming convention:
- Time vs Frequency domain signals (Time / Frequency prefix)
- Accelerometer and Gyroscope measurements
- Mean and standard deviation values
- X, Y, Z axis directions
The following transformations were applied:

1. Training and test datasets were merged into one dataset
2. Only variables containing mean() and std() were extracted
3. Activity IDs were replaced with descriptive activity names
4. Variable names were cleaned for readability (e.g., t → Time, Acc → Accelerometer)
5. A new dataset was created with the average of each variable for each subject and each activity
The final dataset contains 180 rows and 68 columns.
Each row represents the average of each variable for a specific subject and activity.
