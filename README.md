# Netflix_Project_SQL
# 📊 Netflix Titles SQL Analysis

## 🔍 Introduction

This project explores Netflix's content dataset using structured SQL analysis. The dataset contains detailed information about the Movies and TV Shows available on Netflix, including metadata such as title, director, cast, country of origin, rating, genres, and duration.

The purpose of this project is to discover meaningful trends and insights that can help understand Netflix’s global content distribution and evolution over the years.

---

## 🎯 Project Objectives

- Analyze the distribution of Movies vs. TV Shows on Netflix  
- Track release trends by year and country  
- Identify common ratings and genres  
- Highlight top contributors such as frequently featured directors  
- Examine TV show durations and average number of seasons  
- Extract meaningful statistics from regional content like Indian shows/movies  
- Lay the foundation for data storytelling and visualization

---

## 📁 Dataset Overview

The dataset is publicly available on [Kaggle - Netflix Movies and TV Shows](https://www.kaggle.com/shivamb/netflix-shows). It includes the following key columns:

- `show_id`: Unique ID for each show  
- `type`: Movie or TV Show  
- `title`: Name of the content  
- `director`: Director’s name (if available)  
- `cast`: Main actors and actresses  
- `country`: Country of origin  
- `date_added`: Date the title was added to Netflix  
- `release_year`: Original release year  
- `rating`: Certification (e.g., TV-MA, PG, etc.)  
- `duration`: Duration in minutes or number of seasons  
- `listed_in`: Genre(s)  
- `description`: Summary of the content  

---

## 🛠️ Tools & Technologies Used

- **MySQL**: Relational database used to store and analyze the data  
- **SQL**: Query language used for analysis  
- SQL techniques used:
  - Grouping and Aggregation
  - Filtering with Conditions
  - String functions and Regular Expressions
  - Numeric casting and transformation
  - Sorting and Limiting results

---

## 🧱 Database & Table Structure

- **Database Name**: `netflix`  
- **Table Name**: `netflix_titles`

The table includes:
- `show_id` (Primary Key)  
- `type`  
- `title`  
- `director`  
- `cast`  
- `country`  
- `date_added`  
- `release_year`  
- `rating`  
- `duration`  
- `listed_in`  
- `description`

---

## ✨ Key Insights (Summarized)

- Netflix hosts a diverse balance of Movies and TV Shows  
- Some countries, especially the USA and India, dominate content availability  
- The most common rating varies by content type  
- Directors with the most titles reflect platform partnerships or popularity  
- TV Shows vary significantly in season count, with several long-running titles  
- Indian content showcases recurring genres like drama, romance, and crime

---

## 📈 Features & Impact

- Gives content creators and marketers insights into audience trends  
- Highlights areas of high volume and diversity in Netflix’s content  
- Supports business and data decisions related to acquisitions and regional growth  
- Builds a strong foundation for data visualization and dashboard development  
- Useful for SQL learners, aspiring analysts, and professionals in entertainment tech

---

## 🚀 Future Scope

- Visualize findings using tools like Power BI, Tableau, or Python libraries  
- Expand to include trending titles, user reviews, or ratings (if data is available)  
- Build a recommendation system based on content metadata  
- Analyze content diversity using Natural Language Processing (NLP)  
- Predict future trends in Netflix content strategy

---

## ✅ Conclusion

This project demonstrates the power of SQL for real-world data analysis. By studying Netflix’s content through a structured dataset, we gain valuable insights into content trends, regional distributions, and streaming strategies. It serves as a practical case study for anyone learning SQL or interested in media analytics.

---

## 📜 License

This project is released under the [MIT License](LICENSE). Contributions and forks are welcome!



_
