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

FINDINGS -

Percent Days Employed: This represents the percentage of days a person is employed post release from prison. We saw a strong negative correlation between recidivism and percent days employed. Those who did not work at all were 71% more likely to recidivate than those who worked all days 

Gang Affiliation & Prior Arrests: Those who are gang affiliated are twice as likely to recidivate as those who are not gang affiliated. Similary we saw a clear upward trend between number of prior arrests and recidivism rates whereby those with less than 5 prior arrests had 36% recidivism rate versus those with 30+ prior arrests had a 71% recidivism rate.   

Drug Use: There is a positive correlation between drug use and recidivism whereby those who tested positive for THC, Cocaine, and Meth saw higher rates of recidivism than those who did not test positive. Meth users had the biggest variance where those who tested positive had a 69% recidivism rate versus 59% for those who did not test positive. 

Age at Release & Education Levels: We saw drasticly lower recidivism rate for those with college education. People with higher levels of education had 47% recidivism rate v. 62% without. Similarily there was a steady decline in recidivism as the age of release increased.  

**MODELING** (Notebook is [here](./notebooks/03_modeling.ipynb))

We built, tuned, and evaluated a variety of classification models across three different datasets from New York, Georgia, and Florida each having different sets of features. 

Basic Dataset- NY- Modeling with only age at release, gender, and county of indictment did not result in sufficient improvement from baseline. Our best performing model was a stacked ensemble of random forest and gradient boosting at level one and logistic regression at level two. From this model we only saw a 2% improvement in accuracy from 58% baseline to 60% test accuracy. 

Behavorial Dataset- Georgia - Modeling with behavorial data saw significant bump in accuracy. We ran 9 different classification models on the dataset with the best performing model being gradient boost which saw an 11% increase from baseline accuracy of 60% to 71% test accuracy.

Demographic Dataset- Florida - Modeling with demographic dataset resulted in the highest overall and average accuracy scores. We ran a series of classification models and ultimately a neural network was the most accurate seeing a 25% improvement from a baseline accuracy of 61% to test accuracy of 86%.

**RESULTS AND RECOMMENDATIONS** (Notebook is [here](./notebooks/04_results.ipynb))

In conclusion when given adequate data it is possible to accurately predict recidivism. Our best performing model was a neural network utilizing demographic features and seeing a 25% improvement from the baseline accuracy to correctly classify 86% of recidivism. 

Policy Recommendations
Increase Employment Opportunities
Focus on Rehabilitation Services
Target Gang Affiliations to Break Recidivism Cycle
Increase Access to College and Educational Programs for the Incarcerated


**PRESENTATION**

See [here](./presentation/presentation.pdf) for a brief, fairly non-technical presentation summarizing the problem, modeling process and results.