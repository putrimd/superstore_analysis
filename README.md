# superstore_analysis
Superstore analysis using SQL Server and Power BI
Dataset from https://www.kaggle.com/datasets/anandku79/kpidashboard/data

## Exploratory Data Analysis
Data contains  51289 rows and 26 columns in CSV format file.

### 1. Data Pattern
Find out that data pattern of creating :
- customer_id format is AB-initial number. A = initial of first letter of first name in customer_name; and B = an initial of first letter of last name in customer_name.
- But customer_id data have some inconsistencies data, so customer_id need to be standardized for better data analysis and removing ambiguity.
- order_id format is XX-YYYY-Customer_ID-Order Date to Date Number conversion. XX = initial name of market/ region; YYYY = Year of order_date.
- order_id have some inconsistencies data which include each data show that XX is randomly initial name of market or region. So order_id need to be standardized for better data analysis and removing ambiguity.
