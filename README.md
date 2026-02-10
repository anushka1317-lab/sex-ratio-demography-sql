# Sex Ratio & Literacy Relationship Analysis (SQL)

## Project Overview

This project explores the relationship between literacy rates and sex ratios across Indian states using SQL and census-style demographic data.

The initial goal was to analyze gender imbalance across states by recalculating sex ratios from raw population counts. The project was later extended to examine whether literacy levels show any visible association with gender balance patterns.

Rather than relying only on pre-existing indicators in the dataset, demographic measures were recomputed directly within SQL to ensure accuracy and demonstrate proper data handling.

---

## Data Source

The dataset used in this project is a publicly available census-style demographic dataset obtained from Kaggle. It contains state-wise population figures, gender distribution, and literacy rates.

---

## Objectives

- Recalculate sex ratio using standard demographic definitions  
- Compare gender imbalance across states  
- Structure the dataset into relational tables  
- Use JOIN operations to combine literacy and population data  
- Group states by literacy levels and compare average sex ratios  

---

## SQL Techniques Used

This project demonstrates core beginner-to-intermediate SQL concepts, including:

- SELECT, ORDER BY, LIMIT for structured querying  
- JOIN to combine related tables  
- GROUP BY for aggregated analysis  
- CASE statements to classify literacy categories  
- SUM for aggregation  
- Derived metric calculations (sex ratio and averages)  
- Data cleaning using REPLACE and CAST to handle comma-separated numeric values  

---

## Key Insights

- Sex ratios vary across Indian states, indicating that gender imbalance is not evenly distributed nationwide.  
- States with higher literacy levels often show relatively improved sex ratios, although the relationship is not perfectly linear.  
- When grouped into literacy categories, high-literacy states tend to have a more balanced gender composition on average.  
- A small number of states clearly stand out at both the high and low ends of the sex ratio distribution.  
- Overall population continue to show a slight male skew.

---

## How to Run

1. Import the dataset into a SQL database  
2. Create the relational tables using `sql/table_creation.sql`  
3. Execute the queries provided in `sql/analysis.sql`  

---

## Why This Project Matters

Sex ratio and literacy are both key demographic indicators used in population studies and public policy discussions.  

This project demonstrates how SQL can be used not only to query data, but also to structure it properly, clean it effectively, and derive meaningful demographic insights from raw population figures.


---

## Why This Project Matters
Sex ratio is a fundamental demographic indicator used in population analysis and public policy discussions.  
This project demonstrates how SQL can be applied not just to query data, but also to clean it properly and derive meaningful demographic insights from raw population figures.
