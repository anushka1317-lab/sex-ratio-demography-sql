# Sex-ratio-demography-sql
SQL-based analysis of sex ratio and gender imbalance using census-style demographic data

## Project Overview
- This project explores sex ratio and gender imbalance across Indian states using SQL and census-style demographic data.  
- The main goal was to understand how male and female population distribution differs across regions and to see whether gender imbalance is consistent nationwide or varies from state to state.  
- Instead of relying only on the pre-calculated indicators in the dataset, key demographic measures were recalculated directly from the raw population counts to ensure accuracy.

---

## Data Source
- The dataset used in this project is a publicly available census-style population dataset obtained from Kaggle.  
- It includes state-wise population figures broken down by gender.

---

## Objectives
- Examine overall male and female population distribution  
- Recalculate sex ratios using the standard demographic formula  
- Compare differences in gender composition across states  
- Analyze female share of population as an additional perspective on imbalance  

---

## SQL Techniques Used
- SELECT, ORDER BY, and LIMIT for structured querying  
- Data cleaning using REPLACE and CAST to handle comma-separated numeric values from CSV imports  
- Derived calculations such as sex ratio  
- Ranking states to identify patterns and outliers  

---

## Key Insights
- Sex ratios vary across Indian states, indicating that gender imbalance is not uniform across regions.  
- Some states, particularly in the south, tend to show relatively higher female-to-male ratios.  
- Several states remain on the lower end of the sex ratio distribution, reflecting gender imbalance.  
- The female share of population remains below parity in most states, suggesting a male-skewed demographic structure.  

---

## How to Run
1. Import the CSV dataset into a SQL database  
2. Create the `population_gender` table  
3. Execute the queries provided in `sql/analysis.sql`  

---

## Why This Project Matters
Sex ratio is a fundamental demographic indicator used in population analysis and public policy discussions.  
This project demonstrates how SQL can be applied not just to query data, but also to clean it properly and derive meaningful demographic insights from raw population figures.
