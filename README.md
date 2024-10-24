# Tokyo Olympics Data Engineering Project

## Project Overview
This project involves analyzing the Tokyo Olympics dataset, which encompasses a variety of data related to athletes, events, medals, countries, and other relevant aspects of the 2020 Tokyo Olympics. The goal is to extract valuable insights that can inform stakeholders about athlete performance, event outcomes, and country statistics.

## Data Description

### 1. Athletes Data
- **Columns**: 
  - Athlete ID
  - Athlete Name
  - Age
  - Gender
  - Nationality
  - Sport
  - Discipline
- **Description**: Information about the athletes participating in the Tokyo Olympics, including demographics, representing countries, and sports.

### 2. Events Data
- **Columns**: 
  - Event ID
  - Event Name
  - Sport
  - Discipline
  - Date
  - Venue
- **Description**: Data on the various events held, detailing event names, disciplines (e.g., Track & Field, Swimming), sports, dates, and venues.

### 3. Medals Data
- **Columns**: 
  - Medal ID
  - Athlete ID
  - Event ID
  - Medal Type (Gold, Silver, Bronze)
  - Country
  - Date
- **Description**: Details about medals awarded, linking athletes and events while recording medal types and representing countries.

### 4. Countries Data
- **Columns**: 
  - Country Code
  - Country Name
  - Number of Athletes
  - Total Medals
- **Description**: Data on participating countries, including the total number of athletes and medals won.

### 5. Sports Data
- **Columns**: 
  - Sport ID
  - Sport Name
  - Discipline
  - Number of Events
- **Description**: Information about each sport featured in the Olympics, including disciplines and the number of events held.

## Data Flow in the Project

### Data Ingestion (GitHub to ADLS Gen2)
- **Source**: I utilized HTTP requests from an Azure Data Factory (ADF) pipeline to pull the raw dataset from GitHub.
- **Storage**: The raw data was loaded into Azure Data Lake Storage (ADLS Gen2), making it accessible for further processing.

### Data Cleaning and Transformation (Databricks)
- **Mounting**: The raw data stored in ADLS Gen2 was mounted to Databricks.
- **Cleaning**: I used PySpark in Databricks to clean the data by removing duplicates, handling missing values, and standardizing formats.
- **Transformation**: Applied business logic or aggregation to refine the data, saving the cleaned data in another container called "transformed" within the same ADLS Gen2.

### Data Analysis and Reporting (Synapse Workspace)
- **Lake Database**: A Synapse workspace was created, setting up a lake database connected to the cleaned and transformed data in ADLS Gen2.
- **Table Creation**: Tables were created in Synapse, linked to the cleaned datasets.
- **Analysis**: I executed SQL queries to answer stakeholder questions, such as:
  - Which country won the most medals?
  - Who was the youngest gold medalist?
  - Which sport had the highest number of participating athletes?

### Stakeholder Reporting
I justified my analysis by presenting insights derived from the SQL queries in Synapse, providing meaningful answers to stakeholder inquiries regarding the performance and statistics of the Tokyo Olympics.

## Conclusion
This project demonstrates the end-to-end data engineering process, from ingestion to analysis, using Azure tools to derive insights from the Tokyo Olympics dataset. The analysis provides valuable information for stakeholders interested in the outcomes and performances during the Olympics.

## Skills
- **Data Engineering**: Proficient in Azure Data Factory, Azure Data Lake Storage, Databricks, and Azure Synapse Analytics.
- **Data Analysis**: Utilizing SQL for analytical queries and insights generation.
- **Big Data Technologies**: Experience with PySpark for data processing and transformation.
