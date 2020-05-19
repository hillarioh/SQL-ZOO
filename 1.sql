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

-- Query to Show the countries that are big by area (more than 3 million) or big by population
-- (more than 250 million) but not both. Show name, population and area.
SELECT name, population, area
FROM world
WHERE population > 250000000
    AND NOT area > 3000000
;

-- Query to Show name and population in millions and GDP in billions for the countries in continent 'South America'.
SELECT name, ROUND(population/1000000,2), ROUND(gdp/1000000000,2)
FROM world
WHERE continent='South America';

-- Query to Show the name and per-capita GDP for those countries with a GDP of at least one trillion
-- (1000000000000; that is 12 zeros). Round this value to the nearest 1000.
SELECT name, ROUND(gdp/population,-3)
FROM world
WHERE gdp >=1000000000000;

-- Greece has capital Athens. 
-- Each of the strings 'Greece', and 'Athens' has 6 characters.
-- Query to Show the name and capital where the name and the capital have the same number of characters.
SELECT name, capital
FROM world
WHERE LEN(name)=LEN(capital)

-- The capital of Sweden is Stockholm. Both words start with the letter 'S'.
-- Query to Show the name and the capital where the first letters of each match. 
-- Don't include countries where the name and the capital are the same word.
-- You can use the function LEFT to isolate the first character.
-- You can use <> as the NOT EQUALS operator.
SELECT name, capital
FROM world
WHERE (LEFT(name,1)=LEFT(capital,1)) AND name <> capital;

-- Equatorial  Guinea and Dominican Republic have all of the vowels (a e i o u) in the name. 
-- They don't count because they have more than one word in the name. Find the country that
--  has all the vowels and no spaces in its name. 
-- You can use the phrase name NOT LIKE '%a%' to exclude characters from your results.
SELECT name
FROM world
WHERE name LIKE '%a%'
    AND name LIKE '%e%'
    AND name LIKE '%i%'
    AND name LIKE '%o%'
    AND name LIKE '%u%'
    AND name NOT LIKE '% %';