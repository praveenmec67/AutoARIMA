People Grievances Redressal System

DataSource Considered for the model: DataSet-MonthwiseReceiptsDisposal.csv - Government of India

Team: 

Members: Bharathi,Praveen Thenraj

Data Details: 
The data is a capture of the grievances recieved by the various Departments/Ministry and the different State Governments of India.The data has 128 classes spanned across different Departments/Ministry and State Governments. The data has been captured for all the classes from Jan 2016 to Nov 2019 (monthwise).

Solution:
As part of this Hackathon we as has come up with the below two solutions.

    1. A web based application which forecasts  the number of grievances expected in future for a given Department/Ministry or State Govt.
    2. A user-friendly predictive model which would predict the number of grievances expected in future for any Department or State Govt.

A univariate time series analysis has been done on the dataset, as we had only the grievances recieved as the variable throughout the dataset. As part of this solution, ARIMA model has been used to forecast the future grievances expected in each Department. 128 models for all the classes was built, so that the needed class can be loaded to predict the grievances expected.

Key Challenges:

    1. The dataset is a univariate time series with a very less data points(<50) for each Department/Ministry or State Govt.
    2. The number of grievances recieved varies randomly across different Department/Ministry and State Govt. Hence selecting an optimal model that would best fit all the class was challenging.
    
    3. Obtaining the best accuracy with very limited data points.
    
Potential Outcomes:
    1. The solution would help the respective Departments/Ministry or State Govt about the number of grievances that would be expected in future, so that they can on be alert to ensure timely redressal of these grievances.
    2. It would help to have an idea about the main area of focus needed based on the number of grievances recieved.
    3. Understand the increasing/decreasing trend of the grievances in all the classes so as to evaluate the performance of each class.
