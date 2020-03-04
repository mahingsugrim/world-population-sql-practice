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

-- Q7 - How many countries in this dataset have the word “Islands” in their name?
SELECT DISTINCT country
FROM population_years
WHERE country LIKE '%Islands%';

-- Q8 - What is the difference in population between 2000 and 2010 in Indonesia?
-- Note: it’s okay to figure out the difference by hand after pulling the correct data.
SELECT *
FROM population_years
WHERE
country = 'Indonesia' AND year = 2000
OR
country = 'Indonesia' AND year = 2010;