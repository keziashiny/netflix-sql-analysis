Netflix Data Analysis using SQL
Project Overview

This project explores and analyzes the Netflix Movies and TV Shows dataset using SQL.
The goal of this analysis is to perform data exploration, aggregation, and trend analysis to uncover insights about Netflix content such as content distribution, production countries, ratings, and release trends.

The project demonstrates core data analyst skills, including:

Data exploration

SQL querying

Data aggregation

Trend analysis

Identifying missing data

Dataset

The dataset contains information about Netflix movies and TV shows, including:

Show ID

Type (Movie / TV Show)

Title

Director

Cast

Country

Date Added

Release Year

Rating

Duration

Genre

Description

Total records analyzed:

8807 titles

Dataset source: Kaggle Netflix Titles Dataset

Tools Used

Snowflake (Cloud Data Warehouse)

SQL

GitHub

Key Analysis Questions

The project answers the following questions:

How many titles are available on Netflix?

What is the distribution between Movies and TV Shows?

Which countries produce the most Netflix content?

What are the most common content ratings?

How has Netflix content grown over the years?

What are the longest movies on Netflix?

Which TV shows have the most seasons?

What data fields contain missing values?

Example SQL Query
SELECT type, COUNT(*) AS total_titles
FROM NETFLIX_DB.PUBLIC.NETFLIX_TITLES
GROUP BY type;

This query calculates the number of Movies vs TV Shows available on Netflix.

Key Insights

Some insights from the analysis include:

Movies make up the majority of Netflix content.

The United States produces the largest amount of Netflix titles.

Content production increased significantly after 2015.

The most common ratings include TV-MA and TV-14.

Some dataset fields such as director and country contain missing values.

Project Structure
Netflix-SQL-Analysis
│
├── netflix_analysis.sql
├── README.md
└── dataset
    └── netflix_titles.csv
Skills Demonstrated

SQL Data Analysis

Data Cleaning

Aggregation Queries

Trend Analysis

Cloud Data Warehouse (Snowflake)

GitHub Project Documentation

Future Improvements

Create interactive dashboards in Power BI

Perform deeper analysis on genres and actors

Build a data visualization dashboard

Author

Kezia Shiny Pothumudi

MS Information Technology – Data Analytics
George Mason University

GitHub
https://github.com/keziashiny