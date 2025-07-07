Create database netflix;
Use netflix;
CREATE TABLE netflix_titles (
    show_id VARCHAR(20) PRIMARY KEY,
    type VARCHAR(50),
    title VARCHAR(500),
    director VARCHAR(500),
    cast TEXT,
    country VARCHAR(200),
    date_added DATE,
    release_year INT,
    rating VARCHAR(150),
    duration VARCHAR(250),
    listed_in TEXT,
    description TEXT
);
Select*from netflix_titles;
-- 1:- Count the number ofmovies vs Tv shows
SELECT type, COUNT(*) AS count
FROM netflix_titles
GROUP BY type;
-- 2 Find the most common rating for movies and TV shows?

SELECT type, rating, COUNT(*) AS count
FROM netflix_titles
GROUP BY type, rating
ORDER BY type, count DESC;

-- 3 List all movies that released in 2020 to 2022
SELECT title As Movie_Title,
type AS Movietype,
Release_year
FROM netflix_titles
WHERE type = 'Movie'
  AND release_year BETWEEN 2020 AND 2022;
  --- 4 Top 5 countries with most content on netflix
 
 SELECT country, COUNT(*) AS content_count
FROM netflix_titles
WHERE country IS NOT NULL
GROUP BY country
ORDER BY content_count DESC
LIMIT 5;

-- 5Longest Movie or Tv show Duration
SELECT title, duration, type
FROM netflix_titles
WHERE type = 'Movie'
  AND duration REGEXP '^[0-9]+ min'
ORDER BY CAST(SUBSTRING_INDEX(duration, ' ', 1) AS UNSIGNED) DESC
LIMIT 1;
-- 

-- 6Find all the Tv shows with morethen 5 season
SELECT *
FROM netflix_titles
WHERE type = 'TV Show'
  AND duration LIKE '%Season%'
  AND CAST(SUBSTRING_INDEX(duration, ' ', 1) AS UNSIGNED) > 5;

-- 7Who are the top 5 most featured directors on Netflix?
SELECT director, COUNT(*) AS total_titles
FROM netflix_titles
WHERE director IS NOT NULL
GROUP BY director
ORDER BY total_titles DESC
LIMIT 5;

-- 8 What’s the average number of seasons for all TV Shows?
SELECT AVG(CAST(SUBSTRING_INDEX(duration, ' ', 1) AS UNSIGNED)) AS avg_seasons
FROM netflix_titles
WHERE type = 'TV Show'
  AND duration LIKE '%Season%';
 -- 9How many movies and how many TV shows were released each year
 SELECT release_year, type, COUNT(*) AS total_titles
FROM netflix_titles
WHERE release_year IS NOT NULL
GROUP BY release_year, type
ORDER BY release_year DESC, type;
-- 10What are the most common genres in Indian content?
