# Personal Key Indicators of Heart Disease
## Group5_Final_Project
### Contributors
  - [darin-m-myers](https://github.com/darin-m-myers) - Project Manager & EDA
  - [JBtallgrass](https://github.com/JBtallgrass) - Machine Learning
  - [saramcel](https://github.com/saramcel) - Database Admin & Dasboard Collab
  - [hanstout](https://github.com/hanstout) - Tech & Tableau Dashboard
  - [AlexKrumins](https://github.com/AlexKrumins) - Git Hub Guru and ML Collab

## Presentation
### Selected Topic:  
  Personal Key Indicators of Heart Disease
### Reason for Topic:  
  Heart Disease affects us all and we have each been affected to various degrees by this disease. 
### Source of Data Description:  
  The data source contains 18 variables with Heart Disease as the first column which is the Explanatory Variable.  
  See HeartDiseaseData2020_defs.md for each variable defined as provided in dataset. 

### Questions they hope to answer with the data:
  1. What are the top contributors to Heart Disease based on the features of this data set?
  2. What are the least contributing features in this data set?
  3. What combinations are the worst for Heart Disease outcomes?

### Description of the data exploration phase of the project
During the data exploration phase, the main goals are to obtain an overall understanding of the data, and to determine how that will affect the model chosen for analysis. 

#### Data Set Overview
The dependant variable for this analysis is the first column, HeartDisease. This is a yes or no column as to whether the respondant has Heart Disease. Overall there were no NA values and a small amout of duplicate rows. The unique identifier has already been removed from this data set to prep for Machine Learning, and the number of features has been reduced, so there is a greater chance for duplicate values. These rows should not be removed as they each represent an actual unique individual.
 
![EDA_Overview](/Images/EDA_Overview.png)

##### Balance
Overall the dataset is unbalanced as there are 292,422 individuals marked no, and 27,373 that marked yes for Heart Disease. 

![EDA_HeartDisease](/Images/EDA_HeartDisease.png)

#### Numerical vs Categorical Data
BMI, PhysicalHealth, MentalHealth, and SleepTime are all numerical and the remaining features are categorical or objects. All the categorical objects were Yes/No or boolean columns except for AgeCategory, Race, Diabetic, GenHealth.

![EDA_ValueCounts](/Images/EDA_ValueCounts.png)

#### Unique Values
Of the 17 independant variables, BMI had the highest number of unique values with 3604, and the 9 of the columns had only two unique values. 

![EDA_Unique](/Images/EDA_Unique.png)

#### Correlation
Overall, before any binning or data cleaning, the top five feature correlations are Age Category, Difficutly Walking, Stroke, Physical Health, and Diabetic. The lowest 3 were Physical Activity, Alcohol Drinking, and General Health.

![EDA_Correlation](/Images/EDA_Correlation.png)

### Description of the analysis phase of the project
The descrption of the analysis phase is shared in the Machine Learning Model Section below.

Click [here](https://docs.google.com/presentation/d/1YcjTtTXW_EbCUtDzR2xOAC7jaD8-WxlcsyS_BWhDxWs/edit?usp=sharing) for Google Slides Draft.


#### Communication Protocols
- Slack for the main discussion & P2P correspondence.
- GitHub for commenting on code additions
- Zoom for screen-sharing

## Tech Overview - Hannah
For the technology descriptions, see [technology.md file](https://github.com/AlexKrumins/Group5_Final_Project/blob/main/technology.md). The technologies chosen are summarized in the diagram below.

![image](https://user-images.githubusercontent.com/107961905/201821131-0cf5f10c-4bd5-4715-a25a-98ccc23c3dfd.png)

## GitHub - Alex
One challenge facing the team in this assignment is the (potentially) daunting task of collaborating via GitHub. At times, GitHub can seem overwhelming to newcomers first learning & navigating the environment. Leveraging the experience of [AlexKrumins](https://github.com/AlexKrumins), the group will use GitHub not only as a repository for storing data, code, and analyses, but also as a learning tool to develop the necessary practices for safe and secure code development.

## Machine Learning Model - JB
Once the challenge of the data set selection is complete it is now time to determine the best application of machine learning for the project. Between the two choices there is supervised or unsupervised.  The following was compiled by [JBTallgrass](https://github.com/JBTallgrass), using the exsisting KU courseware and resources to develop the machine learning model portion of the project.

### Unsupervised Machine Learning
The detailed discussion concerning the attributes of unsupervised machine learning models are outside the scope of the project however it is important to note that unsupervised machine learning best suits projects centered on transforming data to create approaches to intuitively analyze or structure whole data sets into clusters or patterns. We have rejected this model as in our dataset the categories are already known: Diagnosed with Heart Disease, or not Diagnosed with Heart Disease. This model was rejected as the groups are already defined as either having heart diesase or not having heart disease.

### Supervised Machine Learning 
In a supervised machine learning environment the input data is refined into paired outcomes. The paired outcomes then provide a "supervised" lens that facilitates the training and test of the supervised machine learning model to predict potential coorelations using new data.
For the purpose of the project, Team 5 will aplly supervised machine learning in accordance with the below graphic.

![Team 5 supervised Machine Learning Model: a graphic representation](https://github.com/AlexKrumins/Group5_Final_Project/blob/main/TM5_ML_model_graphic.png)

In the above graphic the Team has sketched the project into 3 phases to aid in further development of the final project.

  * 1 Training Phase
In this phase the team selected a dataset that provides cleans and paired date where the Y (dependent) and X (independent) variable are available. Once all of the identified datasets are cleaned and processed the data set is divided into a ttrainingn set and testing set.  According to the KU Boot Camp documentation it recommends a 70% training set to train the model.

  * 2 Validation Phase
 This phase applies the model's learning algorithm to the remaining 30% of the given data set. In essence the data is known and the team is testing the model to ensure outputs are inline with defined data.  Assumptions about the dataset, conditions, and hypothesis begin taking shape.

  * 3 Application Phase
Once the model has passed the validation phase, it is now time to apply a new data set. Standard data pre-procession of the data set is required to ensure the data is cleaned and aligned to make the machine learning process effective. the final phase provides a machine learning solution to the new data set and present potential prediction of conditions relevant to the variables and environmental influences.

### Preliminary Data Preprocessing (Dummy Columns)

All non-numeric columns require representative numeric values for the Machine Learning process. Given all the different types of data available in our database, remaining columns include:
- HeartDisease
- BMI
- Smoking
- AlcoholDrinking
- Stroke
- MentalHealth
- DiffWalking
- Sex
- AgeCategory
- Race
- Diabetic
- PhysicalActivity
- SleepTime
- Asthma
- KidneyDisease
- SkinCance

### Preliminary Feature Engineering and Preliminary Feature Selection (including decision-making process) 
#### AgeCategory | Diabetic | SleepTime

- AgeCategory for the original database had 13 different groupings with a span of 5 years each. To highlight the particular risk correlated with Heart Disease and increased age, the groupings were split into the following AgeRisk Bins.
- The Diabetic column for the original database had 4 different groupings with a spectrum of statuses in regards to diabetes. To reduce the confusing and potenitally flucuating degrees of diabetes. The groupings were reduced into the following Diabetes Bins.
- The SleepTime data for the original database had no groupings at all. Many rows show the recommended allotment of slee per day (between 7-9 hours). However some of the entries show patients who are recorded as sleeping up to 24 hours! To limit any outliers or significant deviations, groupings were reduced into the following three Recommended Sleep bins.

| AgeCategory|AgeRisk|Diabetic|Diabetes Bin|SleepTime|Recommended Sleep|
|:------------|:-------|:------------|:-------|------------:|:-------|
| 18-24|Low Risk|No|No|1|Below|
| 25-29|Low Risk|Yes|Yes|2|Below|
| 30-34|Low Risk|"No, borderline diabetes"|No|3|Below|
| 35-39|Low Risk|Yes (during pregnancy)|No|4|Below|
| 40-44|Low Risk|||5|Below|
| 45-49|Medium Risk|||6|Below|
| 50-54|Medium Risk|||7|Meets|
| 55-59|Medium Risk|||8|Meets|
| 60-64|Medium Risk|||9|Meets|
| 65-69|High Risk|||10|Above|
| 70-74|High Risk|||11|Above|
| 75-79|High Risk|||12|Above|
| 80 or older|High Risk|||13|Above|
|||||14|Above|
|||||15|Above|
|||||16|Above|
|||||17|Above|
|||||18|Above|
|||||19|Above|
|||||20|Above|
|||||21|Above|
|||||22|Above|
|||||23|Above|
|||||24|Above|

The original data set came from the BRFSS file for 2020. The author that adjusted this dataset has already reduced the features from several hundred down to a small set of features related to heart disease risks. With this in mind we do not feel that any further reduction in feature is necessary.

### How Data was Split into Training and Testing Sets

To properly train a machine learning model the datset is broken into a training set and a testing set.  the ratio can be aligned to meet a 50%  split or any ratio keeping in mind the size of the dataset.  in the cse of the heart disease dataset, there are over 300k indivduals within the dataset.  this massive set required the team to consider a smaller ratio of 20% training and 80% testing.  See the image below of the coding

![Split data into training and Testing Set](/Images/Split_data_Tg_Tt.PNG)

### Model Choice (including limitations and benefits)

As previously mentioned the team decided on using a supervised machine learning model. Preliminary analysis suggests the team could apply the SMOTEENN model to conduct the supervised machine learning on the heart disease dataset. The courseware covering the SMOTEENN technique supports the team's assessment to avoid the traps of oversampling the data and apply the benefits of both oversampling and undersampling as discussed in Module 17 of the course. For example, within the first run of the machine-learning model, the code returned zero output after waiting approximately 45 minutes. The image below provides the SMOTEENN coding

![SMOTEENN code](/Images/SMOTEENN_code.PNG)

A quick assessment determined that the dataset contains over 10 million cells that require analysis; therefore, the amount of time to produce a second segment appropriate data return proved unsatisfactory and prohibitive to the overall project timeline. In essence, the team determined that the advantage of SMOTEENN is its ability to process a dataset with successful returns. The downside of applying the SMOTEENN is the limitations of process time in conjunction with the project milestones and objectives. 

The team then chose to apply the suggested model that conducts and undersampling of the data to meet the time constraints. The intent on using undersampling is to apply the training and test to the dataset where there is a large amount of data. The size and quality of the data set allows undersampling techniques to present accuracy to the machine learning model. A disadvantage of undersampling is that some data is not used within the analysis. This risk is mitigated by the amount of the known classes within the dataset providing enough data points to construct solid returns on the analysis. The image below shows the team's coding to accomplish this segement of the project.  

![Random Undersampling code](/Images/Undersampling_code.PNG)

#### Limitations of Undersampling
A limitation of random undersamoling is the random loss of data without human consideration. 

#### Benefits of Undersampling
A huge advantage of applying random sampling is correcting the imbalance of the dataset and reducing the skew toward the majority classes within the dataset

## Database - PostgresSQL - Sara
The team has elected to use a Postgres SQL database to store the data tables for this project. This is based on our familiarity with Postgres and connecting to Python with SQLAlchemy. The ERD [all_tables_schema](https://github.com/AlexKrumins/Group5_Final_Project/blob/ed813a1c75cdc1ce08a91933a98e4c18a56b7856/TableSchemas/all_tables_schema.png) decribes the data types for the main table and its relationship with the other three tables. 

![Schema](https://github.com/AlexKrumins/Group5_Final_Project/blob/ed813a1c75cdc1ce08a91933a98e4c18a56b7856/TableSchemas/all_tables_schema.png)

The smaller tables contain the custom categories that we determined as a team based on additional research. 

  * **Age Categories:** There were thirteen categories in the AgeCategory variable, and we did not have a logical reason to examine so many different categories separately (i.e. would there be any meaningful difference between the 18-24 group and the 25-29 group? Probably not). We researched how age interacted with heart disease risk, and we created three risk categories. 
    * The Low Risk category goes from age 18 to 44, because monitoring involves routine tests of blood pressure and cholesterol. 
    * The Medium Risk category includes ages 45 to 64, because the [American Heart Association](https://www.radiologyinfo.org/en/info/screening-cardiac#:~:text=Screening%20Recommendations,these%20screening%20tests%20more%20often) recommends starting to test blood glucose at age 45 because diabetes is a risk factor for heart disease. 
    * The High Risk category includes age 65 and up, because this group is [much more likely](https://www.nia.nih.gov/health/heart-health-and-aging) to experience heart attack, stroke, or coronary heart disease. 

  * **Sleep Time:** There were twenty-four sleep time categories, each representing the number of hours of sleep reported by the individual. We decided to re-categorize the sleep time into three groups based on the [Sleep Foundation's recommendations](https://www.sleepfoundation.org/how-sleep-works/how-much-sleep-do-we-really-need) for adults. The recommended hours of sleep are between 7 and 9 hours for adults from 18 to 64 years old, and they only change slightly after that (7-8 hours for adults 65+).
    * The Below category refers to sleep time between 1 and 6 hours.
    * The Meets category refers to sleep time between 7 and 9 hours.
    * The Above category refers to sleep time between 10 and 24 hours.

  * **Diabetic:** This variable originally had four categories, and we reduced the complexity to two categories. We based this on our examination of the frequencies of each category. Two categories, "No, borderline diabetes" and "Yes, during pregnancy," had so few people that we collapsed them into the "No" category. 
    * Yes: They have been told be a doctor that they have diabetes.
    * No: They have not been told by a doctor that they have diabetes, *or* they had diabetes in pregnancy, *or* they are borderline diabetic. 

When the tables were joined, three new columns were added to the end of the main table. Each of these new variables held the recoded categories from the smaller tables. In this way, we were able to easily recode these variables without permanently altering the original data.

## Visualization - Tableau - Hannah  

### [Storyboard](https://docs.google.com/presentation/d/1Tq_YHoIKLA8vM0sTt9MWIpa8TwNmWDq270CLZIofgjA/edit#slide=id.g19559894a09_1_65) featured Google Slides.  
 
### Summary: 
We will use Tableau to funnel the findings of our ML model into geographic markers to show how these features affect the population. As well as tying in interactive elements using features within Tableau. These interactive elements will include: 
- Input of city and county locations to see personal community risk factors. 
- Input of personal identifiers to see highest personal self-risk facors.  

Within these interactive elements, a user will be able to make our dashboard fuctional for personal use at an individual and community level. 

### Interactive element(s) 
The interactive elements are listed within the storyboard, linked above.

## Project Management - Darin Myers
Overall Project Management has been overseen by Darin Myers. Darin supervised and lead meeetings and discussions. He helped to streamilne discussions and verified progression as the project progressed.

<details><summary>Click the Arrow on the left to expand the First Segment Requirements </summary>
<p>
    
## First Segment Requirements
### Presentation
- [x] Selected topic
- [x] Reason why they selected their topic
- [x] Description of their source of data
- [x] Questions they hope to answer with the data

### GitHub
#### Main Branch
- [x] Includes a README.md

#### Communication Protocols
- [x] Communication Protocols added

#### Individual Branches
| Name | At least one branch for each team member | Each team member has at least four commits from the duration of the first segment |
| --- | --- | --- |
| Alex |✓|✓|
| JB |✓|✓|
| Sara |✓|✓|
| Hannah |✓|✓|
| Darin |✓|✓|

Note: The descriptions and explanations required in all other project deliverables should also be in your README.md as part of your outline, unless otherwise noted.

# Machine Learning Model
Team members present a provisional machine learning model that stands in for the final machine learning model and accomplishes the following:
- [x] Takes in data in from the provisional database
- [x] Outputs label(s) for input data

# Database 
Team members present a provisional database that stands in for the final database and accomplishes the following:
- [x] Sample data that mimics the expected final database structure or schema
- [x] Draft machine learning module is connected to the provisional database

 </p>
 </details>

<details><summary>Click the Arrow on the left to expand the Second Segment Requirements </summary>
<p>
    
## Second Segment Requirements
### Presentation
- [x] Selected topic
- [x] Reason why they selected their topic
- [x] Description of their source of data
- [x] Questions they hope to answer with the data
- [x] Description of the data exploration phase of the project - Darin
- [ ] Description of the analysis phase of the project - JB & Alex
- [x] Presentations are drafted in Google Slides - Sara

### GitHub
#### Main Branch
- [ ] All code in the main branch is production ready
The main branch should include:
- [x] All code necessary to perform exploratory analysis
- [x] Some code necessary to complete the machine learning portion of the project

- [x] Includes a README.md
README.md must include:
- [x] Description of the communication protocols
- [x] Outline of the project (this may include images, but should be easy to follow and digest)

#### Individual Branches
| Name | At least one branch for each team member | Each team member has at least four commits from the duration of the second segment |
| --- | --- | --- |
| Alex |✓|✓|
| JB |✓|✓|
| Sara |✓|✓|
| Hannah |✓|✓|
| Darin |✓|✓|

Note: The descriptions and explanations required in all other project deliverables should also be in your README.md as part of your outline, unless otherwise noted.

# Machine Learning Model
Team members present a provisional machine learning model that stands in for the final machine learning model and accomplishes the following:
- [x] Takes in data in from the provisional database
- [x] Outputs label(s) for input data

- [x] Team members submit the code for their machine learning model, as well as the following:
- [x] Description of preliminary data preprocessing (Dummy Columns)
- [x] Description of preliminary feature engineering and preliminary feature selection, including their decision-making process (Decide to keep all or some of the features)
- [x] Description of how data was split into training and testing sets
- [x] Explanation of model choice, including limitations and benefits

# Database 
Team members present a provisional database that stands in for the final database and accomplishes the following:
- [x] Sample data that mimics the expected final database structure or schema
- [x] Draft machine learning module is connected to the provisional database 

Team members present a fully integrated database.
- [x] Database stores static data for use during the project
- [ ] Database interfaces with the project in some format (e.g., scraping updates the database, or database connects to the model)
- [ ] Includes at least one connection string (using SQLAlchemy or PyMongo) Note: If you use a SQL database, you must provide your ERD with relationships.
- [x] Includes at least two tables (or collections, if using MongoDB)
- [x] Includes at least one join using the database language (not including any joins in Pandas)


# Dashboard - Hannah
A blueprint for the dashboard is created and includes all of the following:
- [ ] Storyboard on Google Slide(s)
- [ ] Description of the tool(s) that will be used to create final dashboard
- [ ] Description of interactive element(s) 

 </p>
 </details>
