# Explore the Pulse of Milan's Hospitality Scene with Airbnb Insight
## From Raw Data to clean Visualization

### Project Overview
The aim of this project is to conduct an exploratory data analysis (EDA) on the Airbnb dataset for Milan, Italy. By analyzing various aspects of the dataset, including pricing, availability, and neighborhood trends, we seek to gain insights into the Milan Airbnb market and understand the factors that influence pricing and demand.

### Data Sources
The primary dataset used for the analysis is "milan.csv", which is the cleansed dataset. The original .csv file is "milan_raw.csv".
The main data source is the [official Airbnb database](https://insideairbnb.com/get-the-data/), which is constantly updated every quarter of the year. The latest update for the database used in this EDA is March 22, 2024. The cleansed dataset, SQL and R scripts for data processing and analysis are available in this repository for further exploration and utilization. 
For the comparison at Question 2), the dataset "rome.csv" was recovered and cleansed in the same way as before.

During the cleaning and preparation phase, following tasks were performed:
1) Creation of a Staging table to preserve the original data
2) Identification and removal of duplicates and outliers
3) Standardization of Data (formatting)
4) Handling missing and null values to avoid imprecise analysis

### Tools
- Excel - Initial data cleansing, addressing formatting inconsistencies and improvment of data quality
- MySQL Workbench - Data Cleaning
- MySQL Workbench - Data Analysis
- Tableau - Data Visualization
- R - Correlation and quick visualization

### Exploratory Data Analysis (EDA) - Questions and findings
1) What is the most common room type in each neighbourhood?
<details>
  <summary>See the findings</summary>
The analysis  reveals that the most common room type in the majority of neighborhoods is "Entire home/apt." This room type consistently appears as the dominant listing across various areas. By evaluating the count of listings per room type within each neighborhood, we observe that it has a significantly higher number of listings compared to other room types such as "Private room" or "Shared room."
</details>

2) Is there a significative difference between the average prices of the two most populated cities in Italy? 
<details>
    <summary>See the findings</summary>
  First step, we find the top 3 cheapest and top 3 most expensive average neighborhood prices in Milan and compare them with those in Rome. 
  
  As we can see, there's a very high discrepancy between the three cheapest neighbourhood and three most expensive. 
<img src="https://github.com/matteoproietti1/AirBnB_Analysis/assets/169601063/b0183eb6-dc59-493c-b894-6723a2d65386" alt="CheapExp" width="480">

  Also the number of listing is very different: few for the lowest, more for the highest.

--*Milan*--

| Neighbourhood      | Average price | Listing count  |
|--------------------|---------------|----------------|
| Parco bosco        | 63            | 8              |
| Bruzzano           | 69            | 41             |
| Adriano            | 70            | 69             |

| Neighbourhood      | Average price | Listing count  |
|--------------------|---------------|----------------|
| Ex om - morivione  | 507           | 115            |
| Umbria - molise    | 412           | 321            |
| Cantalupa          | 373           | 4              |

--*Rome*--

| Neighbourhood      | Average Price | Listing Count  |
|--------------------|---------------|----------------|
| V Prenestino/Cento | 101           | 1319           |
| VI Roma DT         | 110           | 268            |
| XIV Monte Mario    | 120           | 654            |

| Neighbourhood      | Average Price | Listing Count  |
|--------------------|---------------|----------------|
| I Centro Storico   | 225           | 15861          |
| X Ostia/Acilia     | 217           | 818            |
| IV Tiburtina       | 167           | 560            |


</details>

### Correlations and findings
   
### Details and consideration
The data
  
