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
### Ex

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
### Preliminary Feature Engineering and Preliminary Feature Selection (including decision-making process) 
### How Data was Split into Training and Testing Sets
### Model Choice (including limitations and benefits)

## Database - PostgresSQL - Sara
The team has elected to use a Postgres SQL database to store the data tables for this project. This is based on our familiarity with Postgres and connecting to Python with SQLAlchemy. The ERD [table1_schema](https://github.com/AlexKrumins/Group5_Final_Project/blob/main/table1_schema.png) decribes the data types for the main table. 

![Schema](https://raw.githubusercontent.com/AlexKrumins/Group5_Final_Project/main/TableSchemas/all_tables_schema.png)

## Visualization - Tableau - Hannah
### Tool Description
We will use Tableau to funnel the findings of our ML model into geographic markers to show how these features affect the population.

### Interactive element(s) 


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
| Alex |✓|-|
| JB |✓|-|
| Sara |✓|-|
| Hannah |✓|-|
| Darin |✓|✓|

Note: The descriptions and explanations required in all other project deliverables should also be in your README.md as part of your outline, unless otherwise noted.

# Machine Learning Model
Team members present a provisional machine learning model that stands in for the final machine learning model and accomplishes the following:
- [x] Takes in data in from the provisional database
- [x] Outputs label(s) for input data

- [x] Team members submit the code for their machine learning model, as well as the following:
- [x] Description of preliminary data preprocessing (Dummy Columns)
- [x] Description of preliminary feature engineering and preliminary feature selection, including their decision-making process (Decide to keep all or some of the features)
- [ ] Description of how data was split into training and testing sets
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