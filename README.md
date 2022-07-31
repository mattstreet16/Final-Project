# Premier League Predictor
----------------------------

![download](https://user-images.githubusercontent.com/99688417/178879511-7aff0c99-b5a9-40b2-aba7-e05f686349a6.png)



### Overview
----------------------------

#### Description:

In this project, we will be creating a machine learning model that will successfully predict the outcome of future Premier League matches for home teams based on the data we have sourced. We will implement a wide range of data analysis techniques to analyze the Premier League data and will create visualizations to make the data more easily understood.

#### Background:

Football or soccer as Americans call it is the most popular sport in the world, and the English Premier League is the most popular domestic league, attracting billions of eyes and dollars from all across the globe. As American fans, we want to show the rest of the world that our football knowledge and analysis are as good as if not better than other countries around the world. Although it is not America’s pastime, it is growing rapidly in the states and our love and knowledge of the sport are as compared to the football fanatics around the world. By deep diving into the Premier League Data, we source we hope to answer some important questions about the sport. Is there such a thing as a home-field advantage? How likely is it a home team will when a match? How do you visualize home field advantage in data? What are the key features to predicting the results of a home team game in the premier league? 

### Set up:
----------------------------

#### Description of Source Data:

To complete our goal, we used past Premier League season data. We originally scraped this data from football-data.co.uk, a football betting site that has a large historical data resource, using a web scraper we scraped the past Premier League data reaching back fifteen seasons to the most recent season. Using the fifteen separate season CSVs we combined them into a single completed data set. 

These CSVs and our final combined dataset contain all playing stats of the seasons from 2007-2022 which consists of:

o	Div = League Division

o	Date = Match Date

o	HomeTeam = Home Team

o	AwayTeam = Away Team

o	FTHG = Full Time Home Team Goals

o	FTAG = Full Time Away Team Goals

o	FTR = Full Time Result (H=Home Win, D=Draw, A=Away Win)

o	HTHG = Half Time Home Team Goals

o	HTAG = Half Time Away Team Goals

o	HTR = Half Time Result (H=Home Win, D=Draw, A=Away Win)

o	Referee = Match Referee

o	HS = Home Team Shots

o	AS = Away Team Shots

o	HST = Home Team Shots on Target

o	AST = Away Team Shots on Target

o	HF = Home Team Fouls Committed

o	AF = Away Team Fouls Committed

o	HC = Home Team Corners

o	AC = Away Team Corners

o	HY = Home Team Yellow Cards

o	AY = Away Team Yellow Cards

o	HR = Home Team Red Cards

o	AR = Away Team Red Cards

o	B365H = Bet365 home win odds

o	B365D = Bet365 draw odds

o	B365A = Bet365 away win odds

o	VCH = VC Bet home win odds

o	VCD = VC Bet draw odds

o	VCA = VC Bet away win odds


#### Data Focus:

Our data focus is the FTR or the full-time result of a match because that will determine if the given home team wins lose or draws. ‘H’ means the home team Won, ‘D’ means there was a Draw or tie, and A’ means the Away team Won

In a team sport like soccer, home teams allegedly have a huge advantage, and specifically in the rowdy Premier League home field advantage could play a massive role in the outcome of matches. The home fans help inspire players, and the players do not have to travel before the matches. We will discover if this alleged advantage is a reality, and which data points and features are important in predicting the FTR.  The main data focus is dependent on the data points in our CSV, for example, shots on target and fouls committed, and so on play a role in the FTR. However, it is worth noting that in reality countless other factors like time of day, the team's form, and even nongame playing statistics like a team's Twitter popularity can have an impact on the result of a match. 

### ML Model: 

For this model, we are testing the results of home teams. Note that this is a multiclass issue because the results can be win loss or draw. Firstly, we have to explore and prepare the data

#### Data exploration and Preliminary feature selection feature selection 

•	Calculate the total number of matches

•	Calculate the number of features

•	Calculate the matches won by the home team 

•	Calculate the win rate of the home team

#### Data Processing and Preparation 

	Review data

    o	Clean the data sets
    
    o	Drop rows and columns with empty values 
    
    o	Check for and remove unnecessary features 
   
    o	Review unique values and trends that may link to target data
    
    o	Create a scatter matrix to visualize the most relevant features
    
        	Look for any trends in feature selection
        
    o	Preparare data to predict FTR
    
        	Split and standardize data focusing on FTR.

    o	Review, and edit features used in the model

        	Review data to determine which values to combine as home and away given that the premier league is open, and teams can change. 

	Prepare the data for processing

    o	Drop columns so that data contain only fields used by the machine learning model

	Prepare for machine learning

    o	Split data into our features and target arrays

    o	Split the data into a training and testing dataset

    o	Fit the data and run initial evaluations
    
#### Machine Learning Model Choice

	Models Considered and tested

    o	Decision Tree
    
    o	Random Forest Classifier 
    
    o	Support Vector Machine (SVM) 
    
    o	XGBoost (XGB)
    
	Advantages

    o	Decision Tree

        	Allows for categorical features.

        	Well fitted for a multi-classification issue

        	Requires little data preparation
    o	Support Vector Machine (SVM) 

        	Will find data points closest to one another

        	More productive in high dimensional space 
        
    o	XGBoost 
    
        	Ensemble Machine learning model for test results of data
        	Highly flexible 
        	Works well with small and medium data sets
	Disadvantages

    o	Decision Tree
    
        	Less effective in predicting outcomes of a continuous variable
        
    o	Support Vector Machine (SVM) 

        	Does not perform well with larger datasets 

        	Imbalanced and noisy data can cause overlapping properties 
        
    o	XGBoost 

        	Not largely scalable

        	Sensitive to outliers and sparse data

	Model Chosen: XGBoost

    o	This model has consistently tested with the highest accuracy score while running tests
    
    o	A very popular algorithm used to predict sports outcomes 
#### Training the Machine Learning Model

•	We defined our feature sets by graphing the most important features 

(Pics) 

•	We then split our processed data into feature and target arrays

•	We created the StandardScaler instance, fit the scaler with the training set, and scaled the data.

•	Then we fit X_train and Y_train data for each model we selected and examined their results for accuracy

#### Interpreting the Machine Learning model

•	We were able to fit the model correctly, so we believe the accuracy score to be true

•	Our focus was to predict the Full-Time Results (FTR) 

•	In our initial model, we used a Random Forest Classifier, and the accuracy was 100% we realized this was because the Full-Time Home Goals (FTHG) data point gave the model the answer, so it was too easy to predict. After dropping the column our model was able to predict the result of a match. 

•	Dropping FTHG then made the HTR, or Halftime result far more important in predicting the outcome of the match

•	We believe that our final XGboost model is a solid predictor of Premier League match outcomes

#### Description of Database: 

The team has picked SQL through pgadmin as the main way to access our created database because Pgadmin is easily accessible, and all members have experience using it.

(explain pics)

(Pic)

(pic)

### Process: 
----------------------------
#### Data Exploration Phase 

Premier League seasonal data reviewed for:

•	Accuracy- Is the data we are scraping, correct?

•	Clarity- Is the data understandable and easily explainable?

•	Amount- Is there enough data to build a machine learning model?

Once the data had been reviewed, our team brainstormed and discussed possible questions the data could answer and how a machine learning model could use this data. We decided to try and predict the outcomes of matches to determine if the home team will win testing the truth of home field advantage.

#### Data Analysis Phase

After our team discussed the main target question we began to clean and process our data to prepare for testing

	Collecting Data

    o	Review many sources for Premier League season data to locate the optimal site to scrape 
    o	Review the season data to ensure it is accurate and appropriate for our project
    o	Web scrap site for Premier League Data from 2007-2022
    o	Clean and process data
    o	Combine seasonal data to form the final dataset
    
Once the team settled on a final dataset we set up and tested a simple model

#### Tools Used

Description of tools used: Technologies, languages, tools used:

o	Data

o	Python (Libraries: pandas, matplotlib, hvplot.pandas, plotly.express, sklearn.preprocessing, sklearn.decomposition, sklearn.cluster)

o	Jupyter Notebook

o	PostgreSQL

o	pgAdmin

o	Google sites

o	GitHub

o	Google slides

#### Presentation

The team will be presenting the project via google slides. The presentation will discuss our process and how our team was able to complete tasks on time. Furthermore, the presentation will display the results of the project in our dashboard.

#### Dashboard: 

(Pic)
Interactive dashboard that allows users to view Premier league data by season

Elements:

•	Timeline

•	Multiple visualizations detailing specific aspects of the specific season

#### Results

	Observations

    o	Moderately Predicts Outcomes of Premier League matches

    o	Consistent and reproducible with an accuracy of about .80

    o	There is home-field advantage in the Premier League 

#### Recommendations 

•	Use a larger data set with more Premier League seasons

•	Incorporate other aspects in predicting a game like weather data or social media 

•	Repeat the process for other popular soccer leagues around the world and compare the results 

#### Lessons Learned

•	Watch more Premier League games

•	Watch for home field advantage and bet on home teams in solid matchups 

•	Communication amongst a group is crucial for completing a project

 #### Links:
Google Slides Presentation:
https://docs.google.com/presentation/d/1myIXOO0odW2dvJVCNQn6Clzfpo7ZM4rwfMPEO2yNL90/edit?usp=sharing

Dashboard:
https://sites.google.com/view/pemierleagueproject-team9/home

