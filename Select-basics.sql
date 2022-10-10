-- https://sqlzoo.net/wiki/SELECT_basics
1.
SELECT population FROM world
  WHERE name = 'Germany'

2.
SELECT name, population FROM world
  WHERE name IN ('Sweden', 'norway', 'Denmark');

3.
SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000

Quiz.
7 out of 7