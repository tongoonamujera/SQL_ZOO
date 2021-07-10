--select basics
SELECT population FROM world
  WHERE name = 'Germany'

SELECT name, population FROM world
  WHERE name IN ('Sweden', 'Norway', 'Denmark');

SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000

--SELECT names
--name starting from a character
SELECT name FROM world
  WHERE name LIKE 'Y%'

--names ending with a character
SELECT name FROM world
  WHERE name LIKE '%y'

--names including a character
SELECT name FROM world
  WHERE name LIKE '%x%'

SELECT name FROM world
  WHERE name LIKE '%land'

SELECT name FROM world
  WHERE name LIKE 'C%%ia'

SELECT name FROM world
  WHERE name LIKE '%oo%'

SELECT name FROM world
  WHERE name LIKE '%a%a%a%'

SELECT name FROM world
  WHERE name LIKE '_t%'
ORDER BY name

SELECT name FROM world
  WHERE name LIKE '%o__o%'

SELECT name
  FROM world
WHERE name = capital

SELECT name
  FROM world
WHERE capital LIKE '__% %City%'

-- Select from NOBEL

SELECT winner
  FROM nobel
WHERE yr = 1962
AND subject = 'Literature'

SELECT yr, subject
  FROM nobel
WHERE winner = 'Albert Einstein'

SELECT winner
  FROM nobel
  WHERE subject = 'Peace'
    AND yr >= 2000

SELECT * FROM nobel
  WHERE (yr >= 1980
    AND yr <= 1989)
      AND subject IN ('Literature')

--Select within select
--Select in select 1
SELECT name FROM world
  WHERE population >
    (SELECT population FROM world
      WHERE name='Russia')

--select in select 2
SELECT name FROM world
  WHERE continent = 'Europe'
  AND gdp/population >
      (SELECT gdp/population FROM world
      WHERE name = 'United Kingdom')

--SUM AND COUNT
SELECT SUM(population)
  FROM world

SELECT SUM(gdp) FROM world
  WHERE continent = 'Africa'

SELECT COUNT(name) FROM world
  WHERE area >= 1000000