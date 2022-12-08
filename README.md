
# Personal Key Indicators of Heart Disease
## Group5_Final_Project
### Contributors
  - [darin-m-myers](https://github.com/darin-m-myers) - Project Manager & EDA
  - [JBtallgrass](https://github.com/JBtallgrass) - Machine Learning
  - [saramcel](https://github.com/saramcel) - Database Admin & Dashboard Collab
  - [hanstout](https://github.com/hanstout) - Tech & Tableau Dashboard
  - [AlexKrumins](https://github.com/AlexKrumins) - Git Hub Guru and ML Collab


## Overall Information
### Selected Topic:  
  Personal Key Indicators of Heart Disease
### Reason for Topic:  
  Heart Disease affects us all and we have each been affected to various degrees by this disease. 
### Source of Data Description:  
  The data source contains 18 variables with Heart Disease as the first column which is the Explanatory Variable.  
  See HeartDiseaseData2020_defs.md for each variable defined as provided in dataset.  
  
  Click [here](https://docs.google.com/presentation/d/1pKxIwqTSkS6hSRaHQHCl31KS4-U53mBcugnEquo3WC4/edit#slide=id.g1944374d260_0_352) for more information about our data.

### Questions they hope to answer with the data:
  1. What are the top contributors to Heart Disease based on the features of this data set?
  2. What are the least contributing features in this data set?
  3. How accurate is our model in predicting future outcomes from new data?

### Data Exploration Phase
<details><summary>Click the Arrow on the left to expand the Data Exploration Phase </summary>
<p>

### Description of the data exploration phase of the project
During the data exploration phase, the main goals are to obtain an overall understanding of the data, and to determine how that will affect the model chosen for analysis. 

#### Data Set Overview
The dependant variable for this analysis is the first column, HeartDisease. This is a yes or no column as to whether the respondant has Heart Disease. Overall, there were no NA values and a small amount of duplicate rows. The unique identifier has already been removed from this data set to prep for Machine Learning, and the number of features has been reduced, so there is a greater chance for duplicate values. These rows should not be removed as they each represent an actual unique individual.
 
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
Overall, before any binning or data cleaning, the top five feature correlations are Age Category, Difficulty Walking, Stroke, Physical Health, and Diabetic. The lowest 3 were Physical Activity, Alcohol Drinking, and General Health.

![EDA_Correlation](/Images/EDA_Correlation.png)

 </p>
 </details>

### Presentation
Click [here](https://docs.google.com/presentation/d/1YcjTtTXW_EbCUtDzR2xOAC7jaD8-WxlcsyS_BWhDxWs/edit?usp=sharing) for Google Slides Presentation.

#### Communication Protocols
- Slack for the main discussion & P2P correspondence.
- GitHub for commenting on code additions
- Zoom for screen-sharing

## Tech Overview
For the technology descriptions, see [technology.md file](https://github.com/AlexKrumins/Group5_Final_Project/blob/main/technology.md). The technologies chosen are summarized in the diagram below.

<img src="https://github.com/AlexKrumins/Group5_Final_Project/blob/hannah-branch/Images/Group%20Project.png" width="500" height="600"/>

## GitHub
One challenge facing the team in this assignment is the (potentially) daunting task of collaborating via GitHub. At times, GitHub can seem overwhelming to newcomers first learning & navigating the environment. Leveraging the experience of [AlexKrumins](https://github.com/AlexKrumins), the group will use GitHub not only as a repository for storing data, code, and analyses, but also as a learning tool to develop the necessary practices for safe and secure code development.

## Machine Learning Model
Once the challenge of the data set selection is complete it is now time to determine the best application of machine learning for the project. Between the two choices there is supervised or unsupervised.  The following was compiled by [JBTallgrass](https://github.com/JBTallgrass), using the existing KU courseware and resources to develop the machine learning model portion of the project.

### Unsupervised Machine Learning
The detailed discussion concerning the attributes of unsupervised machine learning models are outside the scope of the project however it is important to note that unsupervised machine learning best suits projects centered on transforming data to create approaches to intuitively analyze or structure whole data sets into clusters or patterns. We have rejected this model as in our dataset the categories are already known: Diagnosed with Heart Disease, or not Diagnosed with Heart Disease. This model was rejected as the groups are already defined as either having heart disease or not having heart disease.

### Supervised Machine Learning 
In a supervised machine learning environment the input data is refined into paired outcomes. The paired outcomes then provide a "supervised" lens that facilitates the training and test of the supervised machine learning model to predict potential correlations using new data.
For the purpose of the project, Team 5 will apply supervised machine learning in accordance with the below graphic.

![Team 5 supervised Machine Learning Model: a graphic representation](https://github.com/saramcel/Group5_Final_Project/blob/c200c3931596f727cc308b9910c1f635d664625b/Images/TM5_ML_model_graphic.png)

In the above graphic the Team has sketched the project into 3 phases to aid in further development of the final project.

  * 1 Training Phase
In this phase the team selected a dataset that provides cleans and paired date where the Y (dependent) and X (independent) variable are available. Once the identified datasets are cleaned and processed the data set is divided into a training set and testing set.  According to the KU Boot Camp documentation it recommends a 70% training set to train the model.

  * 2 Validation Phase
 This phase applies the model's learning algorithm to the remaining 30% of the given data set. In essence the data is known and the team is testing the model to ensure outputs are inline with defined data.  Assumptions about the dataset, conditions, and hypothesis begin taking shape.

  * 3 Application Phase
Once the model has passed the validation phase, it is now time to apply a new data set. Standard data pre-procession of the data set is required to ensure the data is cleaned and aligned to make the machine learning process effective. the final phase provides a machine learning solution to the new data set and present potential prediction of conditions relevant to the variables and environmental influences.

### Preliminary Data Preprocessing

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

### Preliminary Feature Engineering and Preliminary Feature Selection 
#### AgeCategory | Diabetes | SleepTime

- AgeCategory for the original database had 13 different groupings with a span of 5 years each. To highlight the particular risk correlated with Heart Disease and increased age, the groupings were split into the following AgeRisk Bins.

<details><summary>Expand to see the AgeCategory -> AgeRisk Bins </summary>
  <!-- <style>
    table, th, tr, td {
      border: 1px solid black;
      border-collapse: collapse;
    }
  </style> -->
    <p>
      <table>
        <tr>
          <th>AgeCategory</th>
          <th>AgeRisk</th>
        </tr>
        <tr>
          <td>18-24</td>
          <td>Low Risk</td>
        </tr>
        <tr>
          <td>25-29</td>
          <td>Low Risk</td>
        </tr>
        <tr>
          <td>30-34</td>
          <td>Low Risk</td>
        </tr>
          <td>35-39</td>
          <td>Low Risk</td>
        <tr>
          <td>40-44</td>
          <td>Low Risk</td>
        </tr>
        <tr>
          <td>45-49</td>
          <td>Medium Risk</td>
        </tr>
        <tr>
          <td>50-54</td>
          <td>Medium Risk</td>
        </tr>
        <tr>
          <td>55-59</td>
          <td>Medium Risk</td>
        </tr>
        <tr>
          <td>60-64</td>
          <td>Medium Risk</td>
        </tr>
        <tr>
          <td>65-69</td>
          <td>High Risk</td>
        </tr>
        <tr>
          <td>70-74</td>
          <td>High Risk</td>
        </tr>
        <tr>
          <td>75-79</td>
          <td>High Risk</td>
        </tr>
        <tr>
          <td>80 or older</td>
          <td>High Risk</td>
        </tr>
      </table>
    </p>
</details>

- The Diabetic column for the original database had 4 different groupings with a spectrum of statuses in regards to diabetes. To reduce the confusing and potentially fluctuating degrees of diabetes. The groupings were reduced into the following Diabetes Bins.
<details><summary>Expand to see the Diabetic -> Diabetes Bins</summary>
  <p>
    <table>
      <tr>
        <th>Diabetic</th>
        <th>Diabetes Bin</th>
      </tr>
      <tr>
        <td>Yes</td>
        <td>Yes</td>
      </tr>
      <tr>
        <td>No</td>
        <td>No</td>
      </tr>
      <tr>
        <td>No, borderline diabetes</td>
        <td>No</td>
      </tr>
      <tr>
        <td>Yes (during pregnancy)</td>
        <td>No</td>
      </tr>
    </table>
  </p>
</details>

- The SleepTime data for the original database had no groupings at all. Many rows show the recommended allotment of sleep per day (between 7-9 hours). However, some of the entries show patients who are recorded as sleeping up to 24 hours! To limit any outliers or significant deviations, groupings were reduced into the following three Recommended Sleep bins.
<details><summary>Expand to see the SleepTime -> Recommended Sleep Bins</summary>
  <p>
    <table>
      <tr>
        <th>SleepTime</th>
        <th>Recommended Sleep</th>
      </tr>
      <tr>
        <td>1</td>
        <td>Below</td>
      </tr>
      <tr>
        <td>2</td>
        <td>Below</td>
      </tr>
      <tr>
        <td>3</td>
        <td>Below</td>
      </tr>
      <tr>
        <td>4</td>
        <td>Below</td>
      </tr>
      <tr>
        <td>5</td>
        <td>Below</td>
      </tr>
      <tr>
        <td>6</td>
        <td>Below</td>
      </tr>
      <tr>
        <td>7</td>
        <td>Meets</td>
      </tr>
      <tr>
        <td>8</td>
        <td>Meets</td>
      </tr>
      <tr>
        <td>9</td>
        <td>Meets</td>
      </tr>
      <tr>
        <td>10</td>
        <td>Above</td>
      </tr>
      <tr>
        <td>11</td>
        <td>Above</td>
      </tr>
      <tr>
        <td>12</td>
        <td>Above</td>
      </tr>
      <tr>
        <td>13</td>
        <td>Above</td>
      </tr>
      <tr>
        <td>14</td>
        <td>Above</td>
      </tr>
      <tr>
        <td>15</td>
        <td>Above</td>
      </tr>
      <tr>
        <td>16</td>
        <td>Above</td>
      </tr>
      <tr>
        <td>17</td>
        <td>Above</td>
      </tr>
      <tr>
        <td>18</td>
        <td>Above</td>
      </tr>
      <tr>
        <td>19</td>
        <td>Above</td>
      </tr>
      <tr>
        <td>20</td>
        <td>Above</td>
      </tr>
      <tr>
        <td>21</td>
        <td>Above</td>
      </tr>
      <tr>
        <td>22</td>
        <td>Above</td>
      </tr>
      <tr>
        <td>23</td>
        <td>Above</td>
      </tr>
      <tr>
        <td>24</td>
        <td>Above</td>
      </tr>
    </table>
  </p>
</details>

The original data set came from the BRFSS file for 2020. The author that adjusted this dataset has already reduced the features from several hundred down to a small set of features related to heart disease risks. With this in mind we do not feel that any further reduction in feature is necessary.

### How Data was Split into Training and Testing Sets

To properly train a machine learning model the dataset is broken into a training set and a testing set.  The ratio can be aligned to meet a 50% split or any ratio keeping in mind the size of the dataset.  In the case of the heart disease dataset, there are over 300k individuals within the dataset.  this massive set required the team to consider a smaller ratio of 20% training and 80% testing.  See the image below of the coding

<details><summary>Expand to see the Training/Testing Split code</summary>
<p>

![Split data into training and Testing Set](/Images/Split_data_Tg_Tt.PNG)

</p>
</details>

### Model Choice

#### Logistic Regression Model
As previously mentioned, the team used a supervised machine-learning model. More specifically, the model is a logistic regression model. This regression model is a classification algorithm to predict binary outcomes centered on independent variables. The idea of binary outcomes means two answers to the query. First, this project looks at whether an individual is prone to heart disease or not to developing heart disease after considering a series of independent variables such as gender, age, sleep habits, and eating habits. The outcome is either True or False (dependent variable). The outcome the team expects is the likihood of conditons being likely or unlikely.
Preliminary analysis suggests the team could apply the SMOTEENN model to conduct the supervised machine learning on the heart disease dataset. The courseware covering the SMOTEENN technique supports the team's assessment to avoid the traps of oversampling the data and apply the benefits of both oversampling and undersampling as discussed in Module 17 of the course. For example, within the first run of the machine-learning model, the code returned zero output after waiting approximately 45 minutes. The image below provides the SMOTEENN coding

<details><summary>Expand to see the SMOTEEN code</summary>
<p>

![SMOTEENN code](/Images/SMOTEENN_code.PNG)

</p>
</details>

A quick assessment determined that the dataset contains over 10 million cells that require analysis; therefore, the amount of time to produce a second segment appropriate data return proved unsatisfactory and prohibitive to the overall project timeline. In essence, the team determined that the advantage of SMOTEENN is its ability to process a dataset with successful returns. The downside of applying the SMOTEENN is the limitations of process time in conjunction with the project milestones and objectives. 

The team then chose to apply the suggested model that conducts and undersampling of the data to meet the time constraints. The intent on using undersampling is to apply the training and test to the dataset where there is a large amount of data. The size and quality of the data set allows undersampling techniques to present accuracy to the machine learning model. A disadvantage of undersampling is that some data is not used within the analysis. This risk is mitigated by the amount of the known classes within the dataset providing enough data points to construct solid returns on the analysis. The image below shows the team's coding to accomplish this segement of the project.  

<details><summary>Expand to see the Undersampling code</summary>
<p>

![Random Undersampling code](/Images/Undersampling_code.PNG)

</p>
</details>

#### Limitations of Undersampling
A limitation of random undersamoling is the random loss of data without human consideration. 

#### Benefits of Undersampling
A huge advantage of applying random sampling is correcting the imbalance of the dataset and reducing the skew toward the majority classes within the dataset

### Changes in Model Choice
The team did not have any plan to adjust the model application. The logistic regression model was adequate for the project’s duration. However, if there were additional time to explore the wide range of logistic regression alternatives the team could explore alternatives. According to a quick reference of the courseware, the list has some viable candidates—Tree-based Methods, Neural Networks and Support Vector Machines, and K-Nearest Neighbor, to name a few. Given the opportunity in an educational environment, the exploration is boundless with the courseware available. After further research, the Logistic Regression model is prone to overfitting and multicollinearity. the misleading outputs from a high intercorrelations among the independent variables may result in skewed outcomes. Within the project constraints, the Logistics Regression model served the purpose of determining the Heart Disease outcomes, therefore, precluding any adjustment to the team’s model choice. 

### Model Training
The project conducted the training of the model in phases as outlined in the KU Courseware.  The training in this phase the team selected a dataset that provides cleans and paired date where the Y (dependent) and X (independent) variable are available. Once all of the identified datasets are cleaned and processed the data set is divided into a training set and testing set.  According to the KU Boot Camp documentation it recommends a 70% training set to train the model. Continual research and development (if the team were long term) could present opportunities to conduct additonal training sets.

### Model Accuracy
Machine learning accuracy is critical for determining how the model illuminates connections and trends across the dataset within the context of the inputs or training data. The more accurate the model can be with data, the more information is available to decision-makers. Therefore, the more valuable the model. The associated model achieved an accuracy score of .75. This means that 7 of 10 single observations in the testing set were predicted correctly by the model.

![Model Accuracy](/Images/Accuracy_score.PNG)

### Model Confusion Matrix with final precision score
The confusion matrix is where the model is making errors. The matrix is a fundamental technique to assess the model performance. The matirx outlines the overal performance for the Training set and the Testing set.  within the model the clasification of outcome falls into either a "true" or "false" statement with outcomes along a binary scale. Accoriding to the Module 17 courseware Precision, also known as positive predictive value (PPV), is a measure of this. Precision is obtained by dividing the number of true positives (TP) by the number of all positives (i.e., the sum of true positives and false positives, or TP + FP). In the case with this model performance

![Model Precision](Images/Precision.PNG)

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

### Summary: 
We will use Tableau to funnel the findings of our ML model into geographic markers to show how these features affect the population. As well as tying in interactive elements using features within Tableau. These interactive elements will include: 
- Input of state and county locations to see personal community risk factors. 
- Input of personal identifiers to see highest precent of age group.  

Within these interactive elements, a user will be able to make our dashboard fuctional for personal use at an individual and community level.  

### [Storyboard](https://docs.google.com/presentation/d/1Tq_YHoIKLA8vM0sTt9MWIpa8TwNmWDq270CLZIofgjA/edit#slide=id.g19559894a09_1_65) featured Google Slides.  

### [Data Dashboard](https://public.tableau.com/views/HeartDiseaseDashboard_16695909016350/Dashboard12?:language=en-US&publish=yes&:display_count=n&:origin=viz_share_link) featured on Tableau Public.  

### *Personal Key Indicators of Heart Disease Dashboard*, featuring an interactive map of the Kansas City Metro:

![Image](https://github.com/AlexKrumins/Group5_Final_Project/blob/hannah-branch/Images/dashboard.PNG) 

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
- [x] Description of the analysis phase of the project - JB & Alex
- [x] Presentations are drafted in Google Slides - Sara

### GitHub
#### Main Branch
- [x] All code in the main branch is production ready
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
- [x] Database interfaces with the project in some format (e.g., scraping updates the database, or database connects to the model)
- [x] Includes at least one connection string (using SQLAlchemy or PyMongo) Note: If you use a SQL database, you must provide your ERD with relationships.
- [x] Includes at least two tables (or collections, if using MongoDB)
- [x] Includes at least one join using the database language (not including any joins in Pandas)


# Dashboard - Hannah
A blueprint for the dashboard is created and includes all of the following:
- [x] Storyboard on Google Slide(s)
- [x] Description of the tool(s) that will be used to create final dashboard
- [x] Description of interactive element(s) 

 </p>
 </details>

<details><summary>Click the Arrow on the left to expand the Third Segment Requirements </summary>
<p>

### Presentation
- [x] Selected topic
- [x] Reason why they selected their topic
- [x] Description of their source of data
- [x] Questions they hope to answer with the data
- [x] Description of the data exploration phase of the project - Darin
- [x] Description of the analysis phase of the project - JB & Alex
- [x] Technologies, languages, tools, and algorithms used throughout the project
- [x] Presentations are drafted in Google Slides - Sara

### GitHub
#### Main Branch
- [x] All code in the main branch is production ready
The main branch should include:
- [x] All code necessary to perform exploratory analysis
- [x] Most code necessary to complete the machine learning portion of the project

- [x] Includes a README.md
README.md must include:
- [x] Description of the communication protocols
- [x] Cohesive, structured outline of the project (this may include images, but should be easy to follow and digest)
- [x] Link to Google Slides draft presentation

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
Team members submit the working code for their machine learning model, as well as the following
- [x] Takes in data in from the provisional database
- [x] Outputs label(s) for input data

- [x] Team members submit the code for their machine learning model, as well as the following:
- [x] Description of preliminary data preprocessing (Dummy Columns)
- [x] Description of preliminary feature engineering and preliminary feature selection, including their decision-making process (Decide to keep all or some of the features)
- [x] Description of how data was split into training and testing sets
- [x] Explanation of model choice, including limitations and benefits
- [x] Explanation of changes in model choice (if changes occurred between the Segment 2 and Segment 3 deliverables)
- [x] Description of how they have trained the model thus far, and any additional training that will take place
- [x] Description of current accuracy score
- [x] Additionally, the model obviously addresses

# Database 
Team members present a fully integrated database.
- [x] Database stores static data for use during the project
- [x] Database interfaces with the project in some format (e.g., scraping updates the database, or database connects to the model)
- [x] Includes at least one connection string (using SQLAlchemy or PyMongo) Note: If you use a SQL database, you must provide your ERD with relationships.
- [x] Includes at least two tables (or collections, if using MongoDB)
- [x] Includes at least one join using the database language (not including any joins in Pandas)

# Dashboard - Hannah
A blueprint for the dashboard is created and includes all of the following:
- [x] Images from the initial analysis
- [x] Data (images or report) from the machine
- [x] At least one interactive element

 </p>
 </details>

 <details><summary>Click the Arrow on the left to expand the Fourth Segment Requirements </summary>
<p>

### Presentation
- [x] Selected topic
- [x] Reason why they selected their topic
- [x] Description of their source of data
- [x] Questions they hope to answer with the data
- [x] Description of the data exploration phase of the project - Darin
- [x] Description of the analysis phase of the project - JB & Alex
- [x] Technologies, languages, tools, and algorithms used throughout the project
- [x] Presentations are drafted in Google Slides - Sara
- [x] Result of analysis
- [x] Recommendation for future analysis
- [x] Anything the team would have done differently
- [x] Slides are primarily images or graphics (rather than primarily text)
- [x] Images are clear, in high-definition, and directly illustrative of subject matter
- [x] Presentations are finalized in Google Slides.

### GitHub
#### Main Branch
- [x] All code in the main branch is production ready
The main branch should include:
- [x] All code necessary to perform exploratory analysis
- [x] Most code necessary to complete the machine learning portion of the project

- [x] Includes a README.md
README.md must include:
- [x] Description of the communication protocols
- [x] Cohesive, structured outline of the project (this may include images, but should be easy to follow and digest)
- [x] Link to Google Slides draft presentation
- [x] Any images that have been created (at least three)

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
- [x] Team members submit the working code for their machine learning model, as well as the following
- [x] Description of pdata preprocessing (Dummy Columns)
- [x] Description of feature engineering and preliminary feature selection, including their decision-making process (Decide to keep all or some of the features)
- [x] Description of how data was split into training and testing sets
- [x] Explanation of model choice, including limitations and benefits
- [x] Explanation of changes in model choice (if changes occurred between the Segment 2 and Segment 3 deliverables)
- [x] Description of how they have trained the model thus far, and any additional training that will take place
- [x] Description and explanation of model’s confusion matrix, including final accuracy score
- [x] Additionally, the model obviously addresses the question or problem the team is solving.


# Database 
Team members present a fully integrated database.
- [x] Database stores static data for use during the project
- [x] Database interfaces with the project in some format (e.g., scraping updates the database, or database connects to the model)
- [x] Includes at least one connection string (using SQLAlchemy or PyMongo) Note: If you use a SQL database, you must provide your ERD with relationships.
- [x] Includes at least two tables (or collections, if using MongoDB)
- [x] Includes at least one join using the database language (not including any joins in Pandas)

# Dashboard - Hannah
A blueprint for the dashboard is created and includes all of the following:
- [x] Images from the initial analysis
- [x] Data (images or report) from the machine
- [x] At least one interactive element
- [x] Either the dashboard is published or the submission includes a screen capture video of it in action.

 </p>
 </details>
