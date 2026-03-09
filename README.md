# Netflix Data Analysis using SQL

## Project Overview

This project explores and analyzes the Netflix Movies and TV Shows dataset using SQL.

The goal of this analysis is to perform **data exploration, aggregation, and trend analysis** to uncover insights about Netflix content such as content distribution, production countries, ratings, and release trends.

---

## Skills Demonstrated

- Data exploration
- SQL querying
- Data aggregation
- Trend analysis

---

## Dataset

The dataset contains information about Netflix titles including:

- Show ID
- Type (Movie / TV Show)
- Title
- Director
- Cast
- Country
- Date Added
- Release Year
- Rating
- Duration
- Genre
- Description

Total records analyzed:

**8807 titles**

---

## Example SQL Query

```sql
SELECT type, COUNT(*) AS total_titles
FROM NETFLIX_DB.PUBLIC.NETFLIX_TITLES
GROUP BY type;

##Project Structure
netflix-sql-analysis
│
├── netflix_analysis.sql
└── README.md

Author

Kezia Shiny Pothumudi
MS Information Technology – Data Analytics
George Mason University

GitHub: https://github.com/keziashiny
