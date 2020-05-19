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

-- Query to Show year, subject, and name of people who won a 'Medicine' prize 
-- in an early year (before 1910, not including 1910) together
-- with winners of a 'Literature' prize in a later year (after 2004, including 2004)
SELECT *
FROM nobel
WHERE (yr<1910 AND subject='medicine') OR (yr>2003 AND subject='literature')

--Query to Find all details of the prize won by PETER GRÜNBERG
SELECT *
FROM nobel
WHERE winner = 'PETER GRÜNBERG'

-- Query to Find all details of the prize won by EUGENE O'NEILL Escaping single quotes
-- You can't put a single quote in a quote string directly. You can use two
-- single quotes within a quoted string.
SELECT *
FROM nobel
WHERE winner = 'EUGENE O''NEILL';

-- Query to show list the winners, year and subject where the winner starts
-- with Sir. Show the the most recent first, then by name order.
SELECT winner, yr, subject
FROM nobel
WHERE winner LIKE 'Sir%'
ORDER BY yr DESC


