* We made the following technical decisions based on the requirements of the project:

* Model Data Source: heart_2020_cleaned.csv

* Language and Libraries: We are using Python along with libraries Pandas, Numpy, Matplotlib to clean, prepare, and analyze our data. These libraries provide the capabilities we will need, as well as the team familiarity.

* Database: Postgres was chosen to clean, analyze and store the data because we wanted a realtional database to easily insert and update the data. 

    QUESTION: After analyzing the pros and cons between Postgres and MongoDB, I have a different technology suggestion based on the needs for the group analysis: 

    Postgre should be used if we are only using one dataset. Postgres works well for a defined model, relationships, and format. If data object types do not change, this will be the better choice. It may end up being more time consuming to use Postgres if using multiple datasets with multiple object types. 
        * We will need an ERD if using Postgres. 

    MongoDB: Because MongoDB accepts different object types without predefining, it will make more sense to use MongoDB if using mulitple datasets with large, unstructured data. 

* Machine Learning: We will use SciKitLearn libraries. SciKitLearn libraries will allow us to split data into training and testing sets. The SMOOTEEN classifer will be important for our project because of the unbalanced dataset chosen. We will need both undersampling and oversampling capabilities. 

* Development tools: We chose to use Jupyter Notebook for our editor because of familiarity and ease, specifically for the ML portion. 

* Dashboard: We will use Tableau for our presentation due to it's ease of use, familiarity and ability to provide the presentations needed. We will need to create one interactive element with Tableau. 
    While JavaScipt would provide more interactivity, Tableau will satisfy the questions we are trying to answer. 



