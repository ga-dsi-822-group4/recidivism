## Group Project 4: Comparing 3 Models for Predicting Recidivism


**BACKGROUND**

We are a team of policy researchers trying to determine if an algorithm can accurately predict whether an inmate will be reincarcerated. We will build and evaluate a series of different classification models to determine what features most predict whether someone will recidivate. 


**PROPOSED SOLUTION**

Our approach will entail collecting, cleaning, feature engineering, building, tuning, and evaluating a variety of classification models. Models to be considered will include logistic regression, KNN, Decision Trees, Random Forest & Ensemble Models, Naive Bayes and  Neural Networks. 


**WHAT SUCCESS LOOKS LIKE**

Our aim is to optimize for both accuracy and specificty. While accuracy will be our primary goal, we also strive to limit false positives as to avoid any unneccessary allocation of resources or restrictions on those who are inaccurately identified as likely to recidivate. A successful model is one that substantially outperforms the baseline accuracy, ideally X% accuracy and Y% recall. 


**DATA DICTIONARY**

Due to the combined length of the data dictionaries for the 3 models, they are linked separately here:

- Data dictionary for [Model 1: New York](./data/NY/data_dictionary_NY.md)
- Data dictionary for [Model 2: Florida](./data/FL/data_dictionary_FL.md)
- Data dictionary for [Model 3: Georgia](./data/GA/data_dictionary_GA.md)

**DATA ACQUISITION AND CLEANING** (Notebook is [here](./notebooks/01_data_acq_clean.ipynb))

We identified three datasets from three different states in the US with varying features to be used for modeling. Data was collected from various sources including government websites and Kaggle. Null values were imputed or dropped, please see acquisition and cleaning notebook for detailed steps and logic.

Datasets:
Basic- New York - 188k Observations - 5 Features 
Demographic- Florida - 11k Observations - 25 Features
Behavorial- Georgia - 25k Observations - 58 Features

**EXPLORATORY DATA ANALYSIS** (Notebook is [here](./notebooks/02_eda.ipynb))

The purpose of this notebook is to "play" with a few aspects of the data, helping us to hone in on the useful columns and identify any problematic data that might cause us problems when modeling. Following are summaries/examples of the explorations conducted:

BASELINE ACCURACY

Basic Dataset: 58% 
Demographic Dataset: 61% 
Behavorial Dataset: 60% 

CONCLUSIONS - TBD add in summaries of compelling EDA across key topic areas including those below

Percent Days Employed:

Drug Use:

Gang Affiliation:

Release Conditions:

Number of Prior Arrests:

Age:

**MODELING** (Notebook is [here](./notebooks/03_modeling.ipynb))

TODO

**RESULTS AND RECOMMENDATIONS** (Notebook is [here](./notebooks/04_results.ipynb))

TODO

A few final recommendations were made based on these results:
- TODO

**PRESENTATION**

See [here](./presentation/presentation.pdf) for a brief, fairly non-technical presentation summarizing the problem, modeling process and results.