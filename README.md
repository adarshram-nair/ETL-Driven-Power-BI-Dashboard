# Development of an ETL-Driven Dashboard for Analyzing Customer Behaviour towards Products of an E-Commerce Website
A Data Pipeline and BI Project using Pentaho DI and Power BI

## Table of Contents
1. Aim of the Project
2. Tools Used
3. Source Data
4. Process Followed in the Project
5. Usage of Uploaded Files
6. License
7. Contact Information


## Aim of the Project
To develop a BI dashboard using Microsoft Power BI to analyze customer behaviour towards various products during the year 2024. The data for the dashboard was Extracted, Transformed, and Loaded (ETL) into a Data Warehouse using an ETL tool - Pentaho Data Integration. Since this dashboard is for analyzing customer behaviour, Customers’ private information (example: names) was not extracted into the Data Warehouse or included in the visualizations.

## Tools Used
1. DBMS: PostgreSQL
2. Data Integration Tool / ETL Tool: Pentaho Data Integration (PDI)
3. Business Intelligence Tool: Microsoft Power BI

## Source Data
The source dataset is downloaded from Kaggle.
Dataset: eCommerce Transactions
Uploaded by: Chad Wambles
Link: www.kaggle.com/datasets/chadwambles/ecommerce-transactions

The dataset mimics transactions for a fictional eCommerce website named EverMart Online. These .csv files represent the transactional tables for this project and will be used for further processing.

## Process Followed in the Project
For detailed steps of the project please download and refer the [Report](https://github.com/adarshram-nair/ETL-Driven-Power-BI-Dashboard/blob/main/ETL-Driven%20Dashboard%20Report%20by%20Adarshram%20Nair.pdf) pdf file.
1. Downloaded the source dataset from Kaggle and treated it as the transactional data.
2. Created staging DB and Tables.
3. Extracted the data to staging tables using PDI.
4. Created data warehouse (DWH) DB and Tables.
5. Transformed and loaded data from staging to DWH using PDI.
6. Created dashboard in Power BI.


## Usage of Uploaded Files
### Prerequisites
Download and install the tools mentioned above. Any database management system may be used but the query syntax should be changed if required.

### To replicate the process followed in the project

1. Clone the repository.
2. Find the source dataset in [1. Source Data](https://github.com/adarshram-nair/ETL-Driven-Power-BI-Dashboard/tree/main/1.%20Source%20Data).
3. Create Staging DB and tables using the queries mentioned in [2. Staging DB and Table Creation](https://github.com/adarshram-nair/ETL-Driven-Power-BI-Dashboard/tree/main/2.%20Staging%20DB%20and%20Table%20Creation).
4. Create connection in PDI to the staging DB.
5. Select the staging DB connection and mention the path of the source files in first step of each PDI transformation files and run the PDI job file from [3. Extraction](https://github.com/adarshram-nair/ETL-Driven-Power-BI-Dashboard/tree/main/3.%20Extraction) in PDI. This would carry out the extraction of source data to staging tables.
6. Create DWH DB and tables using the queries mentioned in [4. DWH DB and Table Creation](https://github.com/adarshram-nair/ETL-Driven-Power-BI-Dashboard/tree/main/4.%20DWH%20DB%20and%20Table%20Creation).
7. Create connection in PDI to the DWH DB.
8. Open the transformation and loading steps in PDI. The files for this step are present in [5. Transformation and Loading](https://github.com/adarshram-nair/ETL-Driven-Power-BI-Dashboard/tree/main/5.%20Transformation%20and%20Loading).
9. Select the appropriate connections in input and output steps of the transformation files.
10. Configure the Mail step in the PDI job file.
11. Run the PDI job file. This will load the transformed data into the DWH DB.
12. Open the Power BI file in [6. Data Visualization](https://github.com/adarshram-nair/ETL-Driven-Power-BI-Dashboard/tree/main/6.%20Data%20Visualization) using Power BI.
13. Configure connection to the DWH in Power BI and change the source of the fact and dimension tables to the tables in the DWH DB.
14. Refresh the visuals in Power BI.

## License
The project is licensed under the MIT license - see the [LICENSE](https://github.com/adarshram-nair/ETL-Driven-Power-BI-Dashboard/blob/main/LICENSE) file for details.

## Contact Information
Adarshram Nair  
Email - nair.adarshram@gmail.com  
LinkedIn Profile- [Linkedin.com/in/adarshram-nair](linkedin.com/in/adarshram-nair)
