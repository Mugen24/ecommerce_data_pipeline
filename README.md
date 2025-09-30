## Requirements & Delieverables
### 1. Orchestrator (20%)
- [] Use either Airflow/Dagster or other cloud tools to manage the pipeline.
    
- [] Configure a Slack integration to send pipeline success/failure notifications (or any other notification system of your choice)
- [] Include steps for:
  - [] Ingesting data from the CSV files to the Data Lake
  - [] Transforming and loading data into the data warehouse.
  - [] dbt transformation process in the datawarehouse.
- [] DAG/Pipeline logic is not limited to any form, you can have 1 DAG/Pipeline from beginning to end, or you can have 2 DAGs/Pipelines, 1 for source to Data Warehouse and 1 for Data Warehouse transformation. Inside the DAG/Pipeline, you can create as many tasks as you see fit to implement the process.

### 2. Data Lake (20%)
- [] Use Amazon S3/Azure Data Lake/Google Cloud Storage for raw data storage.
- [] Local MinIO is acceptable but will result in point deductions.
- [] For transformation in this layer, you should apply light transformation only. Spark is not required but you may use it if you wish.
- [] For loading from Data Lake to Data Warehouse, Spark is required.

### 3. Data Warehouse (20%)
- [] Use Amazon Redshift/Azure Synapse/Google Bigquery/Snowflake for storing processed data from the Data Lake.
- [] Local Postgres is acceptable but will result in point deductions.
- [] Must use dbt for transformation and data modeling, must ensure:
  - [] Correctness of the final data model, logical relationship of Dim and Fact Tables
  - [] Accuracy of each table (removing nulls, handling duplicates, consistent record counts...)
  - [] Implementations of Slowly Changing Dimension Type 2 (SCD Type 2) where you deem suitable

### 4. Business Intelligence (20%)
- [] Must use PowerBI, connect to the final data model of your data engineering process and build a dashboard that includes:
  - [] A general analysis of the business operations, visualizing key metrics and trends
  - [] At least 2 actionable recommendations by analyzing any specific aspect of the business

### 5. Documentation (20%)
- [] Upload the project to your personal Github account and name it "ecommerce-data-pipeline"
- [] Write your own README.md, present however you want but it must contain these information:
  - [] Introduction: What the project is about
  - [] Source Data: Attach the original relational data model
  - [] Architecture/Workflow: Attach an image of your architecture/workflow and answer these questions:
    - [] How did you ingest your data into the Data Lake?
    - [] What kind of transformation did you do in the Data Lake and what is the result of it?
    - [] What is your final data model after transforming with dbt (attach your image of the final data model)?
    - [] How many records are there in each of the tables in the final data model?
  - [] Project Structure: A clear hierarchy explaining each folder and file in the project, only important ones are needed
  - [] Quickstart: Meaning how to reproduce your project, what should other people do to be able to run your pipeline
  - [] Tech Stack: What are the technologies included in this project, for each technology, write a brief overview of its responsibility in the project and attach a demonstration image of its UI
  - [] Business Insights: Attach your dashboard images, present your findings about the data and your recommendations for the business
  - [] Challenges and Lessons Learned: Reflect on your difficulties and how you solved them

## Additional Notes
- [] Bonus points for additional implementations of other technologies not listed in any steps of the project.
- [] Sumit the test by attaching your github repository url

## Running

source utils.sh
run 
/src/main.py


### Web-interface 
## User login:
localhost:8080
username: airflow
password: airflow

### Initialising database
- docker compose up airflow-init

### To turn off container
- docker compose down --volumes --remove-orphans

- docker compose up


## Technology 
- S3 
- Glue ATL
- Redshift
- Infrastucture as Code
