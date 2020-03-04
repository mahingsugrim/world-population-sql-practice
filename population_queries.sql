-- Q3 - What years are covered by the dataset? (you can manually count the number of years returned).
SELECT DISTINCT year
FROM population_years;

-- Q4 - What is the largest population size for Gabon in this dataset?
SELECT *
FROM population_years
WHERE country = 'Gabon'
ORDER BY population DESC
LIMIT 1;