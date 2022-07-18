# Premier League Predictor
----------------------------

![download](https://user-images.githubusercontent.com/99688417/178879511-7aff0c99-b5a9-40b2-aba7-e05f686349a6.png)



## Overview

### Description:
In this project, we will be creating a machine learning model that will successfully predict the outcome of future Premier League matches based on the data we have sourced.

### Background:
Football or soccer as Americans call it is the most popular sport globally, and the English Premier League is the most popular domestic league. As American fans, we want to show the rest of the world that our football knowledge and analysis are as good as if not better than other countries around the world. Although it is not America’s pastime, our love and knowledge of the sport are as comparable to football fanatics around the world. 

### Set up:
#### Description of source data:

To complete our goal, we used past Premier League season data. We originally scraped this data from football-data.co.uk, a football betting site that has a large historical data resource, using a web scraper we scraped the past Premier League data reaching back fifteen seasons to the most recent season. Using the fifteen separate season CSVs we combined them into a single completed data set. 

#### Data Focus:
In a team sport like soccer, Home teams have a huge advantage, and specifically in the rowdy Premier League home field advantage is a massive impact on the outcome of matches. The home fans help inspire players, and the players do not have to travel before the matches. 
The main data focus we have is the FTR or full-time result of a match because that will determine if a given team win loses or draws. This main data focus however is dependent on countless other factors, like location, time of day, the team's form, and many other data points. 


### Communication protocols:
The members of the team are in separate locations and on different personal schedules so communication will be a very important aspect of this project. To complete every segment of this project on time we implement strict communication protocols:

#### Class Meetings:

All members of the team have committed to coming to class and working together in a breakout zoom call for the entire length of the class and then some if needed. 

#### Deadline Meetings:

All members of the team have agreed that before any deadline we will get together and discuss our process and ensure we meet all the best standards of work.


#### Slack Group Message:

All members of the team have been placed in a slack group message where we will regularly communicate with each other throughout the process of the project. This will allow us to keep in touch and assist each other with any questions.

#### Ad Hoc Meetings:

Given that each team member's schedule can vary randomly, we have agreed to meet outside of our scheduled meeting times, Using Slack to plan and set up a zoom call whenever required.

#### Github Repository:

Our team created a central location for sharing code, resources, data, etc. Team members have their folders to work in but all team members can access others' information as needed. As we complete the stages, we will proceed to merge our work in our folders onto the main branch.


### ML model: (Draft)
For this model, we are testing the results of home teams. Note that this is a multiclass issue because the results can be win loss or draw. Firstly we have to explore and prepare the data

#### Data exploration and feature selection 

•	Calculate the total number of matches

•	Calculate the number of features

•	Calculate the matches won by the home team 

•	Calculate the win rate of the home team

#### Data processing and preparation:

•	Review data

    o	Create a scatter matrix to visualize the most relevant features 

    o	Preparare data to predict FTR

      	Split and standardize data focusing on FTR.

    o	Review, and edit features used in the model

      	Review data to determine which values to combine as home and away given that the premier league is open and teams can change. 

•	Prepare the data for processing

    o	Drop columns so that data  contain only fields used by the machine learning model

•	Prepare for machine learning

    o	Split data into our features and target arrays

    o	Split the data into a training and testing dataset

    o	Fit the data and run initial evaluations

#### Machine Learning Model Choice:
•	Models used

    o	Logistic Regression Model

    o	Support Vector Machine (SVM) 

    o	Random Forest Classifier (RFC)

•	Advantages

    o	Logistic regression Model

      	Fits our data into a logistic curve

      	Well fitted for a multi-classification issue

    o	Support Vector Machine (SVM) 

      	Will find data points closest to one another

    o	Random Forest Classifier

      	Simple Machine learning model for test results of data

### Description of Database:

The team has picked SQL through pgadmin as the main way to access our created database because Pgadmin is easily accessible and all members have experience using it.
The database the team created will contain the tables of premier league data and will be connected to the machine learning model.

![sql](https://user-images.githubusercontent.com/99688417/179432303-fd1a9ef2-40fd-4f07-936b-43876da1e5d3.png)


### Process: (Draft to be continued)

### Results: (Draft to be continued)

As of now the results of the models ran are hyper-accurate and will need further analysis and adjustment to ensure the results are repeatable and the model properly functions.
