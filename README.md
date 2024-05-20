# Explore the Pulse of Milan's Hospitality Scene with Airbnb Insight
## From Raw Data to clean Visualization

### Project Overview
The aim of this project is to conduct an exploratory data analysis (EDA) on the Airbnb dataset for Milan, Italy. By analyzing various aspects of the dataset, including pricing, availability, and neighborhood trends, we seek to gain insights into the Milan Airbnb market and understand the factors that influence pricing and demand.

### Data Sources
The main data source is the [official Airbnb database](https://insideairbnb.com/get-the-data/), which is constantly updated every quarter of the year. The latest update for the database used in this EDA is March 22, 2024. 
The original .csv file is "milan_raw.csv", while the cleansed dataset used for the analysis is "milan.csv".

### Tools
- Excel - Initial data cleansing, addressing formatting inconsistencies and improvment of data quality
- MySQL Workbench - Data Cleaning
- MySQL Workbench - Data Analysis
- Tableau - Data Visualization
- R - Correlation and quick visualization

### Exploratory Data Analysis (EDA)
1) What is the most common room type in each neighbourhood?
<details>
  <summary>See the findings</summary>
The analysis  reveals that the most common room type in the majority of neighborhoods is "Entire home/apt." This room type consistently appears as the dominant listing across various areas. By evaluating the count of listings per room type within each neighborhood, we observe that it has a significantly higher number of listings compared to other room types such as "Private room" or "Shared room."
</details>

2) What are the prices in the cheapest and most expensive neighborhoods in Milan, and how do they compare?
<details>
    <summary>See the findings</summary>
  As we can see, there's a very high discrepancy between the three cheapest neighbourhood and three most expensive. 
<img src="https://github.com/matteoproietti1/AirBnB_Analysis/assets/169601063/b0183eb6-dc59-493c-b894-6723a2d65386" alt="CheapExp" width="480">

  Also the number of listing is very different: few for the lowest, more for the highest.
| Neighbourhood      | Average price | Listing count |
|--------------------|---------------|---------------|
| Parco delle abbazie| 81            | 11            |
| Adriano            | 70            | 69            |
| Bruzzano           | 69            | 41            |

| Neighbourhood      | Average price | Listing count |
|--------------------|---------------|---------------|
| Ex om - morivione  | 507           | 115           |
| Umbria - molise    | 412           | 321           |
| Lambrate           | 291           | 113           |

</details>

### Correlations and findings
   
### Details and consideration
The data
  
