DROP TABLE IF EXISTS NETFLIX;

CREATE TABLE NETFLIX (
    show_id VARCHAR(10),
    type VARCHAR(50),
    title TEXT,
    director TEXT,
    casts TEXT,
    country TEXT,
    date_added VARCHAR(50),
    release_year INT,
    rating VARCHAR(20),
    duration VARCHAR(20),
    listed_in TEXT,
    description TEXT
);

SELECT DISTINCT type FROM NETFLIX;

-- PROBLEMS
-- 1. Count Number of movies vs Tv shows
SELECT 
type,
COUNT (*) as total_content
FROM NETFLIX
GROUP BY type

-- COMMON RATING FOR MOVIES AND TV SHOWS
SELECT 

 type,
 rating
 FROM 
 ( SELECT 
 type,
 rating,
 COUNT(*),
 RANK() OVER(PARTITION BY type ORDER BY COUNT(*) DESC) AS ranking
-- rating
--MAX(rating)
FROM NETFLIX
GROUP BY 1,2
) as t1
WHERE 
ranking = 1
--ORDER BY 1,3 DESC

-- MOVIES IN 2020

SElECT * FROM NETFLIX 
WHERE 
type = 'Movie'
AND
release_year = 2020

--  TOP 5 COUNTRY WITH MOST CONTENT
SELECT 
UNNEST(STRING_TO_ARRAY(country, ',')) as new_country,
COUNT(show_id) as total_content
FROM NETFLIX
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5

-- LONGEST MOVIES
SELECT * FROM NETFLIX
WHERE 
type = 'Movie'
AND
duration = (SELECT MAX(duration) FROM NETFLIX)

-- ADDEDIN LAST 5 YRS
SELECT * FROM NETFLIX
WHERE TO_DATE(date_added,'Month DD, YYYY') >= CURRENT_DATE - INTERVAL '5 years';
 SELECT CURRENT_DATE - INTERVAL '5 years'


-- movie by rajiv chilaka
SELECT * FROM NETFLIX
WHERE director ILIKE '&Rajiv Chilaka'

--all tv show with season more than 5
SELECT *
FROM NETFLIX 
WHERE 
type = 'TV SHOWS'
AND
SPLIT_PART(duration,' ',1)::numeric > 5

-- number of content item in each genre 
SELECT 
UNNEST(STRING_TO_ARRAY(listed_in,',')) as genre,
COUNT(show_id) as total_content
FROM NETFLIX
GROUP BY 1

-- MOVIES THAT ARE DOCUMENTARIES
SELECT * FROM NETFLIX
WHERE listed_in ILIKE '%documentaries'

-- content without director
SELECT * FROM NETFLIX
WHERE director IS NULL

-- SALMAN KHAN MOVIES APPEARED LAST 12 YRS
SELECT *
FROM NETFLIX
WHERE 
    casts ILIKE '%Salman Khan%'
    AND release_year > EXTRACT(YEAR FROM CURRENT_DATE) - 12;
