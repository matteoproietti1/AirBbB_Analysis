# Explore the Pulse of Milan's Hospitality Scene with Airbnb Insight
## From Raw Data to clean Visualization

## 1) Introduction
### Project Overview
The aim of this project is to conduct an exploratory data analysis (EDA) on the Airbnb dataset for the city of Milan, Italy. By analyzing various aspects of the dataset, including pricing, availability, and neighborhood trends (and comparing some of those with the city of Rome), we seek to gain insights into the Milan Airbnb market and understand the factors that influence pricing and demand.

### Data Sources
The primary dataset used for the analysis is "milan.csv", which is the cleansed dataset. The original .csv file is "milan_raw.csv".
The main data source is the [official Airbnb database](https://insideairbnb.com/get-the-data/), which is constantly updated every quarter of the year. The latest update for the database used in this EDA is March 22, 2024. The cleansed dataset, SQL and scripts for data processing and analysis are available in this repository for further exploration and utilization. 
For the comparison at Question 2), the dataset "rome.csv" was recovered and cleansed in the same way of the previous one.

## 2) Data processing
### Data preparation
During the cleaning and preparation phase, following tasks were performed:
1) Creation of a Staging table to preserve the original data
2) Identification and removal of duplicates and outliers
3) Standardization of Data (formatting)
4) Handling missing and null values to avoid imprecise analysis

### Tools
- Excel - Initial data cleansing, addressing formatting inconsistencies and improvment of data quality
- MySQL Workbench - Data Cleaning
- MySQL Workbench - Data Analysis
- Tableau - Data Visualization for Dashboard
- R - Correlation and quick visualization
  
## 3) Data Analysis
### Exploratory Data Analysis (EDA) - Questions and findings
1) What is the most common room type in each neighbourhood?
<details>
  <summary>See the findings</summary>
The analysis  reveals that the most common room type in the majority of neighborhoods is "Entire home/apt." This room type consistently appears as the dominant listing across various areas. By evaluating the count of listings per room type within each neighborhood, we observe that it has a significantly higher number of listings compared to other room types such as "Private room" or "Shared room."
</details>

2) Is there a significative difference between the average prices of the two most populated cities in Italy? 
<details>
    <summary>See the findings</summary>

  After finding the three most expensive and cheapest neighbourhood, as we can see, there's a very high discrepancy between the two cities, with Milan having the highest average prices, twice as big compared to Rome. 
  
<img src="https://github.com/matteoproietti1/AirBnB_Analysis/assets/169601063/aba083e1-da27-408b-b4a1-80bc2186bdc1" alt="CheapExp" width="600">

Things change for the cheapest, where the average price is higher in Rome than Milan (even though the difference from first to last is not that wide as before).

<img src="https://github.com/matteoproietti1/AirBnB_Analysis/assets/169601063/2c168cf9-690e-40e3-9b1b-5174c80adfda" alt="CheapExp" width="600">

Also the number of listing is very different: Milan has very few listing for the neighbourhood, both in the cheapest and most expensive. In fact, Rome is 1st in ranking for number of AirBnB italy, so that is not surprising.

--*Milan*--

| Neighbourhood      | Average price | Listing count  |
|--------------------|---------------|----------------|
| Parco bosco        | 63            | 8              |
| Bruzzano           | 69            | 41             |
| Adriano            | 70            | 69             |
| Ex om - morivione  | 507           | 115            |
| Umbria - molise    | 412           | 321            |
| Cantalupa          | 373           | 4              |

--*Rome*--

| Neighbourhood      | Average Price | Listing Count  |
|--------------------|---------------|----------------|
| V Prenestino/Cento | 101           | 1319           |
| VI Roma DT         | 110           | 268            |
| XIV Monte Mario    | 120           | 654            |
| I Centro Storico   | 225           | 15861          |
| X Ostia/Acilia     | 217           | 818            |
| IV Tiburtina       | 167           | 560            |


</details>

### Final conclusions
From this analysis, we can find some more interest finding, summarized in the following dashboard, which the interactive version can be found on [Tableau Public].(https://public.tableau.com/app/profile/matteo.proietti8500/viz/MilanAirBnBOverview/DashboardMilan#1)
<details><summary>View the Dashboard</summary>
<img src="https://github.com/matteoproietti1/AirBnB_Analysis/assets/169601063/630b0bab-4c8d-4675-ba19-93414a70ea63" alt="CheapExp" width="1000">
</details>
   
### Further consideration
The data
  
