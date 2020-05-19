-- query to show  Nobel prizes for 1950.
SELECT yr, subject, winner
FROM nobel
WHERE yr = 1950

-- Query to Show who won the 1962 prize for Literature.
SELECT winner
FROM nobel
WHERE yr = 1962
    AND subject = 'Literature'

-- Query to Show the year and subject that won 'Albert Einstein' his prize.
SELECT yr, subject
FROM nobel
WHERE winner='Albert Einstein'

-- Query to show  name of the 'Peace' winners since the year 2000, including 2000.
SELECT winner
FROM nobel
WHERE yr>=2000 AND subject='Peace'

-- Query to Show all details (yr, subject, winner) of the Literature prize winners for 1980 to 1989 inclusive.
SELECT *
FROM nobel
WHERE subject ='Literature' AND yr BETWEEN 1980 AND 1989;

-- Query to Show all details of the presidential winners:
-- Theodore Roosevelt
-- Woodrow Wilson
-- Jimmy Carter
-- Barack Obama
SELECT *
FROM nobel
WHERE winner IN ('Theodore Roosevelt',
                  'Woodrow Wilson',
                  'Jimmy Carter',
                  'Barack Obama');

-- Query to Show the winners with first name John
SELECT winner
FROM nobel
WHERE winner LIKE 'john%'

--Query to show the year, subject, and name of Physics winners for 1980 together with the Chemistry winners for 1984.
SELECT yr, subject, winner
FROM nobel
WHERE (yr=1980 AND subject='physics') OR (yr=1984 AND subject='chemistry')

-- Query to Show the year, subject, and name of winners for 1980 excluding Chemistry and Medicine
SELECT *
FROM nobel
WHERE yr=1980 AND subject NOT IN('chemistry','medicine')