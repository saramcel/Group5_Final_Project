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
The detailed discussion concerning the attributes of unsupervised machine learning models are outside the scope of the project however it is important to note that unsupervised machine learning best suits projects centered on transforming data to create approaches to intuitively analyze or structure whole data sets into clusters or patterns. We have rejected this model as in our dataset the categories are already known: Diagnosed with Heart Disease, or not Diagnosed with Heart Disease.

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

## Database - PostgresSQL - Sara
The team has elected to use a Postgres SQL database to store the data tables for this project. This is based on our familiarity with Postgres and connecting to Python with SQLAlchemy. The ERD [table1_schema](https://github.com/AlexKrumins/Group5_Final_Project/blob/main/table1_schema.png) decribes the data types for the main table. 

![Schema](https://raw.githubusercontent.com/AlexKrumins/Group5_Final_Project/main/table1_schema.png?token=GHSAT0AAAAAABV3OAJTTJONC2TZEGR76D5GY3TBMFQ)

## Visualization - Tableau - Hannah
We will use Tableau to funnel the findings of our ML model into geographic markers to show how these features affect the population.

## Project Management - Darin Myers
Overall Project Management has been overseen by Darin Myers. Darin supervised and lead meeetings and discussions. He helped to streamilne discussions and verified progression as the project progressed.

<details><summary>Click the Arrow on the left to expand the First Segment Requirements </summary>
<p>
    
## First Segment Requirements
### Presentation
- [✓] Selected topic
- [✓] Reason why they selected their topic
- [✓] Description of their source of data
- [✓] Questions they hope to answer with the data

### GitHub
#### Main Branch
- [✓] Includes a README.md

#### Communication Protocols
- [✓] Communication Protocols added

#### Individual Branches
| Name | At least one branch for each team member | Each team member has at least four commits from the duration of the first segment |
| --- | --- | --- |
| Alex |✓|✓|
| JB |✓|✓|
| Sara |✓|✓|
| Hannah |✓|✓|
| Darin |✓|✓|

Note: The descriptions and
explanations required in all other
project deliverables should also be in
your README.md as part of your
outline, unless otherwise noted.

# Machine Learning Model
Team members present a provisional machine learning model that stands in for the final machine learning model and accomplishes the following:
- [✓] Takes in data in from the provisional database
- [✓] Outputs label(s) for input data

# Database 
Team members present a provisional database that stands in for the final database and accomplishes the following:
- [✓] Sample data that mimics the expected final database structure or schema
- [✓] Draft machine learning module is connected to the provisional database 

 </p>
 </details>
