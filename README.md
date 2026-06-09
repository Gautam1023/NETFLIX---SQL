# NETFLIX MOVIES AND SHOW  DATA ANALYSIS
![NETFLIX LOGO](https://github.com/Gautam1023/NETFLIX---SQL/blob/main/logo.png)

# Netflix Data Analysis Using SQL

## Project Overview

This project focuses on analyzing Netflix's Movies and TV Shows dataset using SQL. The objective is to solve real-world business problems, uncover meaningful insights, and demonstrate advanced SQL techniques such as Common Table Expressions (CTEs), Window Functions, String Manipulation, Aggregations, and Data Filtering.

The analysis helps understand content distribution, audience targeting, geographical trends, genre popularity, and content characteristics available on Netflix.

---

## Objectives

* Analyze the distribution of Movies and TV Shows.
* Identify the most common content ratings.
* Explore content trends across countries and years.
* Discover top-performing genres and actors.
* Analyze content duration and release patterns.
* Categorize content based on keywords in descriptions.
* Practice advanced SQL querying and analytical problem-solving.

---

## Dataset

**Source:** Netflix Movies and TV Shows Dataset (Kaggle)

### Dataset Columns

| Column       | Description                  |
| ------------ | ---------------------------- |
| show_id      | Unique content identifier    |
| type         | Movie or TV Show             |
| title        | Content title                |
| director     | Director name                |
| casts        | Cast members                 |
| country      | Country of production        |
| date_added   | Date added to Netflix        |
| release_year | Release year                 |
| rating       | Content rating               |
| duration     | Movie duration or TV seasons |
| listed_in    | Genre/category               |
| description  | Content description          |

---

## Database Schema

```sql
DROP TABLE IF EXISTS netflix;

CREATE TABLE netflix
(
    show_id      VARCHAR(5),
    type         VARCHAR(10),
    title        VARCHAR(250),
    director     VARCHAR(550),
    casts        VARCHAR(1050),
    country      VARCHAR(550),
    date_added   VARCHAR(55),
    release_year INT,
    rating       VARCHAR(15),
    duration     VARCHAR(15),
    listed_in    VARCHAR(250),
    description  VARCHAR(550)
);
```

---

## Business Problems Solved

### 1. Content Distribution Analysis

* Count total Movies vs TV Shows.

### 2. Rating Analysis

* Identify the most common rating for each content type.

### 3. Release Year Analysis

* Retrieve all movies released in a specific year.

### 4. Country-Wise Content Analysis

* Find the Top 5 countries with the highest Netflix content production.

### 5. Duration Analysis

* Identify the longest movie available on Netflix.

### 6. Recent Content Analysis

* Find content added during the last five years.

### 7. Director Analysis

* Retrieve all content directed by a specific director.

### 8. TV Show Analysis

* List TV Shows with more than five seasons.

### 9. Genre Analysis

* Count content items available in each genre.

### 10. Indian Content Trends

* Find the Top 5 years with the highest percentage of content releases from India.

### 11. Documentary Analysis

* Retrieve all documentary movies.

### 12. Missing Data Analysis

* Identify content without a listed director.

### 13. Actor-Based Analysis

* Find movies featuring Salman Khan released in the last decade.

### 14. Top Actor Analysis

* Identify the Top 10 actors appearing in Indian-produced content.

### 15. Content Categorization

* Categorize content as:

  * Good
  * Bad

Based on the presence of keywords such as:

* Kill
* Violence

---

## SQL Concepts Used

* SELECT Statements
* WHERE Clauses
* GROUP BY
* ORDER BY
* Aggregate Functions
* Window Functions
* Common Table Expressions (CTEs)
* String Functions
* CASE Statements
* Date Functions
* Array Functions
* Subqueries

---

## Key Insights

### Content Distribution

Netflix offers a balanced mix of Movies and TV Shows, with Movies forming the majority of available content.

### Audience Targeting

Rating analysis helps identify the primary target audience for different content categories.

### Geographic Trends

Certain countries contribute significantly more content than others, highlighting regional production strengths.

### Genre Popularity

Documentaries, Dramas, and International content are among the major content categories.

### Indian Content Growth

India has shown strong growth in content production across multiple years.

### Content Characteristics

Keyword-based categorization provides insight into content themes and maturity levels.

---

## Technologies Used

* PostgreSQL
* SQL
* Kaggle Dataset
* Data Analysis
* Business Intelligence

---

## Learning Outcomes

Through this project, I gained hands-on experience with:

* Advanced SQL Query Writing
* Data Cleaning and Exploration
* Analytical Problem Solving
* Business-Oriented Data Analysis
* Query Optimization Techniques
* Real-World Dataset Analysis

---

## Conclusion

This project demonstrates how SQL can be used to extract actionable insights from large-scale entertainment datasets. By solving multiple business-oriented questions, the analysis provides valuable understanding of Netflix's content ecosystem, audience segmentation, geographical distribution, and content trends.
