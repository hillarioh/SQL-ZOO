-- Query to show the name, continent and population of all countries.
SELECT name, continent, population
FROM world;

-- Query to Show the name for the countries that have a population of at least 200 million
SELECT name
FROM world
WHERE population >= 200000000;

-- Query to show the name and the per capita GDP for those countries with a population of at least 200 million.
SELECT name, gdp/population
FROM world
WHERE population >=200000000;

-- Query to Show the name and population in millions for the countries of the continent 'South America'
SELECT name, population/1000000
FROM world
WHERE continent='South America';

-- Query to Show the countries which have a name that includes the word 'United'
SELECT name
FROM world
WHERE name LIKE '%United%'
;

-- Query to show name,area and population for countries whose area is more than 3 million sq km or 
-- population is more than 250 million.
SELECT name, population, area
FROM world
WHERE area > 3000000 OR population > 250000000;