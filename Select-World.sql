-- https://sqlzoo.net/wiki/SELECT_from_WORLD_Tutorial
1.
SELECT name, continent, population FROM world

2.
SELECT name FROM world
WHERE population >= 200000000

3.
SELECT name, (GDP/population) as 'GDP Per Capita'
FROM world
WHERE population >= 200000000

4.
SELECT name, (population/1000000) AS 'Population in Mils'
FROM world
WHERE continent = 'South America'

5.
SELECT name, population
FROM world
WHERE name IN ('France', 'Germany', 'Italy')

6.
SELECT name
FROM world
WHERE name LIKE 'United%'

7.
SELECT name, population, area
FROM world
WHERE population >= 250000000 OR area >= 3000000

8.
SELECT name, population, area
FROM world
WHERE population >= 250000000 XOR area >= 3000000

9.
SELECT name, ROUND(population/1000000, 2) AS 'Population M', ROUND(GDP/1000000000, 2) AS 'GDP B'
FROM world
WHERE continent = 'South America'

10.
SELECT name, ROUND(GDP/population, -3) as 'GDP Per Capita T'
FROM world
WHERE GDP >= 1000000000000

11.
SELECT name, capital
FROM world
WHERE LENGTH(name) = LENGTH(capital)

12.
SELECT name, capital
FROM world
WHERE LEFT(name, 1) = LEFT(capital, 1) AND name <> capital

13.
SELECT name
FROM world
WHERE name LIKE '%a%'
AND name LIKE '%e%'
AND name LIKE '%i%'
AND name LIKE '%o%'
AND name LIKE '%u%'
AND name NOT LIKE '% %'

Quiz.
7 out of 7