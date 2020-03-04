-- Q3 - What years are covered by the dataset? (you can manually count the number of years returned).
SELECT DISTINCT year
FROM population_years;

-- Q4 - What is the largest population size for Gabon in this dataset?
SELECT *
FROM population_years
WHERE country = 'Gabon'
ORDER BY population DESC
LIMIT 1;

-- Q5 - What were the 10 lowest population countries in 2005?
SELECT country
FROM population_years
WHERE year = 2005
ORDER BY population ASC
LIMIT 10;

-- Q6 - What are all the distinct countries with a population of over 100 million in the year 2010?
SELECT DISTINCT country
FROM population_years
WHERE year = 2010 AND population > 100;
