# Source data description

The source data are from the Human Activity Recognition Using Smartphones Data Set. A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
Here are the data for the project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

### About variables:   
* `x_train`, `y_train`, `x_test`, `y_test`, `subject_train` and `subject_test` contain the data from the downloaded files
* `alltrain` and 'alltest' are the merged datasets from the previous datasets to further analysis
* `features` contains the correct names for the complete dataset, which are applied to the column names stored in

# Tidy data set description

### The variables in the tidy data
Tidy data contains 180 rows and 81 columns. Each row has averaged variables for each subject ID and activity ID.

### Only all the variables estimated from mean and standard deviation in the tidy set were kept.

* mean(): Mean value
* std(): Standard deviation

### The data were averaged based on subject and activity group.

Subject column is numbered sequentially from 1 to 30.
Activity column has 6 types as listed below.
1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

### The tidy data contains 6 rows (averaged based on activity) and 81 columns (79 variables, 1 activity labels and 1 subjectID).

* "subjectID"                                         
* "activityID"                                       
* "TimeBodyAccelerometerMean()-X"                     
* "TimeBodyAccelerometerMean()-Y"                    
* "TimeBodyAccelerometerMean()-Z"                     
* "TimeBodyAccelerometerSTD()-X"                     
* "TimeBodyAccelerometerSTD()-Y"                      
* "TimeBodyAccelerometerSTD()-Z"                     
* "TimeGravityAccelerometerMean()-X"                  
* "TimeGravityAccelerometerMean()-Y"                 
* "TimeGravityAccelerometerMean()-Z"                  
* "TimeGravityAccelerometerSTD()-X"                  
* "TimeGravityAccelerometerSTD()-Y"                   
* "TimeGravityAccelerometerSTD()-Z"                  
* "TimeBodyAccelerometerJerkMean()-X"                 
* "TimeBodyAccelerometerJerkMean()-Y"                
* "TimeBodyAccelerometerJerkMean()-Z"                 
* "TimeBodyAccelerometerJerkSTD()-X"                 
* "TimeBodyAccelerometerJerkSTD()-Y"                  
* "TimeBodyAccelerometerJerkSTD()-Z"                 
* "TimeBodyGyroscopeMean()-X"                         
* "TimeBodyGyroscopeMean()-Y"                        
* "TimeBodyGyroscopeMean()-Z"                         
* "TimeBodyGyroscopeSTD()-X"                         
* "TimeBodyGyroscopeSTD()-Y"                          
* "TimeBodyGyroscopeSTD()-Z"                         
* "TimeBodyGyroscopeJerkMean()-X"                     
* "TimeBodyGyroscopeJerkMean()-Y"                    
* "TimeBodyGyroscopeJerkMean()-Z"                     
* "TimeBodyGyroscopeJerkSTD()-X"                     
* "TimeBodyGyroscopeJerkSTD()-Y"                      
* "TimeBodyGyroscopeJerkSTD()-Z"                     
* "TimeBodyAccelerometerMagnitudeMean()"              
* "TimeBodyAccelerometerMagnitudeSTD()"              
* "TimeGravityAccelerometerMagnitudeMean()"           
* "TimeGravityAccelerometerMagnitudeSTD()"           
* "TimeBodyAccelerometerJerkMagnitudeMean()"          
* "TimeBodyAccelerometerJerkMagnitudeSTD()"          
* "TimeBodyGyroscopeMagnitudeMean()"                  
* "TimeBodyGyroscopeMagnitudeSTD()"                  
* "TimeBodyGyroscopeJerkMagnitudeMean()"              
* "TimeBodyGyroscopeJerkMagnitudeSTD()"              
* "FrequencyBodyAccelerometerMean()-X"                
* "FrequencyBodyAccelerometerMean()-Y"               
* "FrequencyBodyAccelerometerMean()-Z"                
* "FrequencyBodyAccelerometerSTD()-X"                
* "FrequencyBodyAccelerometerSTD()-Y"                 
* "FrequencyBodyAccelerometerSTD()-Z"                
* "FrequencyBodyAccelerometerMeanFreq()-X"            
* "FrequencyBodyAccelerometerMeanFreq()-Y"           
* "FrequencyBodyAccelerometerMeanFreq()-Z"            
* "FrequencyBodyAccelerometerJerkMean()-X"           
* "FrequencyBodyAccelerometerJerkMean()-Y"            
* "FrequencyBodyAccelerometerJerkMean()-Z"           
* "FrequencyBodyAccelerometerJerkSTD()-X"             
* "FrequencyBodyAccelerometerJerkSTD()-Y"            
* "FrequencyBodyAccelerometerJerkSTD()-Z"             
* "FrequencyBodyAccelerometerJerkMeanFreq()-X"       
* "FrequencyBodyAccelerometerJerkMeanFreq()-Y"        
* "FrequencyBodyAccelerometerJerkMeanFreq()-Z"       
* "FrequencyBodyGyroscopeMean()-X"                    
* "FrequencyBodyGyroscopeMean()-Y"                   
* "FrequencyBodyGyroscopeMean()-Z"                    
* "FrequencyBodyGyroscopeSTD()-X"                    
* "FrequencyBodyGyroscopeSTD()-Y"                     
* "FrequencyBodyGyroscopeSTD()-Z"                    
* "FrequencyBodyGyroscopeMeanFreq()-X"                
* "FrequencyBodyGyroscopeMeanFreq()-Y"               
* "FrequencyBodyGyroscopeMeanFreq()-Z"                
* "FrequencyBodyAccelerometerMagnitudeMean()"        
* "FrequencyBodyAccelerometerMagnitudeSTD()"          
* "FrequencyBodyAccelerometerMagnitudeMeanFreq()"    
* "FrequencyBodyAccelerometerJerkMagnitudeMean()"     
* "FrequencyBodyAccelerometerJerkMagnitudeSTD()"     
* "FrequencyBodyAccelerometerJerkMagnitudeMeanFreq()" 
* "FrequencyBodyGyroscopeMagnitudeMean()"            
* "FrequencyBodyGyroscopeMagnitudeSTD()"              
* "FrequencyBodyGyroscopeMagnitudeMeanFreq()"        
* "FrequencyBodyGyroscopeJerkMagnitudeMean()"         
* "FrequencyBodyGyroscopeJerkMagnitudeSTD()"         
* "FrequencyBodyGyroscopeJerkMagnitudeMeanFreq()" 

### Variable units
Activity variable(`activityID`) is integer type.
Subject variable(`subjectID`) is integer type.
All the other variables are numeric type.

### Appropriate labels to the tidy data set with descriptive variable names
* All `Acc` in column’s name replaced by `Accelerometer`
* All `Gyro` in column’s name replaced by `Gyroscope`
* All `BodyBody` in column’s name replaced by `Body`
* All `Mag` in column’s name replaced by `Magnitude`
* All start with character `f` in column’s name replaced by `Frequency`
* All start with character `t` in column’s name replaced by `Time`
