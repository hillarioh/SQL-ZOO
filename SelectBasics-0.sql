-- Query to show the population of Germany
SELECT population
FROM world
WHERE name = 'Germany';

-- Query to Show the name and the population for 'Sweden', 'Norway' and 'Denmark'.
SELECT name, population
FROM world
WHERE name IN ('Sweden', 'Norway', 'Denmark');

-- Query to show the country and the area for countries with an area between 200,000 and 250,000
SELECT name, area
FROM world
WHERE area BETWEEN 200000 AND 250000;

-- Query to Show the name and population for France, Germany, Italy
SELECT name, population
FROM world
WHERE name IN ('France','Germany','Italy');


