-- https://sqlzoo.net/wiki/SELECT_within_SELECT_Tutorial

1.
SELECT name FROM world
WHERE population > (SELECT population FROM world WHERE name = 'Russia')

2.
SELECT name
FROM world
WHERE continent = 'Europe' AND GDP/population >
(SELECT GDP/population FROM world WHERE name = 'United Kingdom')

3.
SELECT name, continent
FROM world
WHERE continent IN
(SELECT continent FROM world WHERE name IN ('Argentina', 'Australia'))
ORDER BY name;

4.
SELECT name, population
FROM world
WHERE population >
(SELECT population FROM world WHERE name = 'Canada') AND population < (SELECT population FROM world WHERE name = 'Poland');

5.
SELECT name, CONCAT(ROUND(population/(SELECT population FROM world WHERE name = 'Germany')*100), '%')
FROM world
WHERE continent = 'Europe';

6.
SELECT name
FROM world
WHERE gdp > ALL(SELECT gdp FROM world WHERE gdp > 0 AND continent = 'Europe');

7.
SELECT continent, name, area
FROM world
WHERE area >= ALL(SELECT area FROM world y WHERE x.continent = y.continent AND y.area>0);

8.
SELECT continent, name
FROM world x
WHERE name <= ALL(SELECT name FROM world y WHERE x.continent = y.continent);

9.
SELECT name, continent, population 
FROM world
WHERE continent IN (SELECT continent FROM world  x WHERE 25000000 >= (SELECT MAX(population) FROM world y WHERE x.continent = y.continent));
OR
SELECT y.name, y.continent, y.population
FROM world AS y
JOIN
(SELECT continent,max(population)
FROM world
GROUP BY continent
HAVING max(population) <= 25000000) AS x
ON y.continent = x.continent

10.
SELECT name, continent
FROM world x
WHERE population > ALL(SELECT 3*population FROM world y WHERE x.continent = y.continent AND x.name <> y.name)

Quiz.
7 out of 7