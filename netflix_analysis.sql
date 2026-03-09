-- Total number of titles
SELECT COUNT(*) AS total_titles
FROM NETFLIX_DB.PUBLIC.NETFLIX_TITLES;

-- Movies vs TV Shows
SELECT type, COUNT(*) AS total_titles
FROM NETFLIX_DB.PUBLIC.NETFLIX_TITLES
GROUP BY type;

-- Top countries producing content
SELECT country, COUNT(*) AS total_titles
FROM NETFLIX_DB.PUBLIC.NETFLIX_TITLES
WHERE country IS NOT NULL
GROUP BY country
ORDER BY total_titles DESC
LIMIT 10;

-- Most common ratings
SELECT rating, COUNT(*) AS total_titles
FROM NETFLIX_DB.PUBLIC.NETFLIX_TITLES
WHERE rating IS NOT NULL
GROUP BY rating
ORDER BY total_titles DESC;

-- Titles released per year
SELECT release_year, COUNT(*) AS total_titles
FROM NETFLIX_DB.PUBLIC.NETFLIX_TITLES
GROUP BY release_year
ORDER BY release_year DESC;

-- Content added per year
SELECT YEAR(TO_DATE(date_added, 'MMMM DD, YYYY')) AS year_added,
       COUNT(*) AS total_titles
FROM NETFLIX_DB.PUBLIC.NETFLIX_TITLES
WHERE date_added IS NOT NULL
GROUP BY year_added
ORDER BY year_added DESC;

-- Top genres
SELECT listed_in, COUNT(*) AS total_titles
FROM NETFLIX_DB.PUBLIC.NETFLIX_TITLES
WHERE listed_in IS NOT NULL
GROUP BY listed_in
ORDER BY total_titles DESC
LIMIT 10;

-- Longest movies
SELECT title, duration
FROM NETFLIX_DB.PUBLIC.NETFLIX_TITLES
WHERE type = 'Movie'
AND duration LIKE '%min%'
ORDER BY TRY_TO_NUMBER(REPLACE(duration, ' min', '')) DESC
LIMIT 10;

-- TV shows with most seasons
SELECT title, duration
FROM NETFLIX_DB.PUBLIC.NETFLIX_TITLES
WHERE type = 'TV Show'
AND duration LIKE '%Season%'
ORDER BY TRY_TO_NUMBER(SPLIT_PART(duration, ' ', 1)) DESC
LIMIT 10;

-- Rows with missing important fields
SELECT *
FROM NETFLIX_DB.PUBLIC.NETFLIX_TITLES
WHERE director IS NULL
OR country IS NULL
OR date_added IS NULL
OR rating IS NULL;


