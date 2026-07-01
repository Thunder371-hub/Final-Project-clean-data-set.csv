CREATE DATABASE moviesonstreamingplatforms;
USE moviesonstreamingplatforms;

select*from moviesonstreamingplatforms_updated_cleaned;

SELECT COUNT(*) AS total_movies
FROM moviesonstreamingplatforms_updated_cleaned;

SELECT 
SUM(`Netflix`) AS Netflix,
SUM(`Hulu`) AS Hulu,
SUM(`Prime Video`) AS PrimeVideo,
SUM(`Disney+`) AS Disney
FROM moviesonstreamingplatforms_updated_cleaned;

SELECT AVG(IMDb) AS avg_imdb
FROM moviesonstreamingplatforms_updated_cleaned;

SELECT Year, COUNT(*) AS total_movies
FROM moviesonstreamingplatforms_updated_cleaned
GROUP BY Year
ORDER BY Year;

SELECT Genres, COUNT(*) AS total
FROM moviesonstreamingplatforms_updated_cleaned
GROUP BY Genres
ORDER BY total DESC;

SELECT Title, IMDb
FROM moviesonstreamingplatforms_updated_cleaned
WHERE IMDb > 8;

SELECT Title,
CASE
    WHEN Runtime <= 90 THEN '0-90'
    WHEN Runtime <= 120 THEN '91-120'
    WHEN Runtime <= 150 THEN '121-150'
    ELSE '150+'
END AS RuntimeGroup
FROM moviesonstreamingplatforms_updated_cleaned;

SELECT Title, Directors, Country
FROM moviesonstreamingplatforms_updated_cleaned;

SELECT Genres, COUNT(*) AS total
FROM moviesonstreamingplatforms_updated_cleaned
GROUP BY Genres
ORDER BY total DESC
LIMIT 1;

SELECT Title, Year
FROM moviesonstreamingplatforms_updated_cleaned
WHERE Year > 2015;