-- https://sqlzoo.net/wiki/SELECT_from_Nobel_Tutorial
1.
SELECT yr, subject, winner
FROM nobel
WHERE yr = 1950

2.
SELECT winner
FROM nobel
WHERE yr = 1962
AND subject = 'literature'

3.
SELECT yr, subject
FROM nobel
WHERE winner = "Albert Einstein"

4.
SELECT winner
FROM nobel
WHERE yr >= 2000 AND subject = 'peace'

5.
SELECT *
FROM nobel
WHERE yr >= 1980 AND yr <= 1989 AND subject = 'Literature'

6.
-- This one got everything but 1 of the entries so dunno
SELECT * 
FROM nobel
WHERE winner IN ('Theodore Roosevelt', 'Thomas Woodrow Wilson', 'Jimmy Carter', 'Barack Obama')

7.
SELECT winner
FROM nobel
WHERE winner LIKE 'John%'

8.
SELECT yr, subject, winner
FROM nobel
WHERE (subject = "Physics" AND yr = '1980') OR (subject = 'Chemistry' AND yr = 1984)

9.
SELECT yr, subject, winner
FROM nobel
WHERE yr = 1980 AND subject NOT IN ('chemistry', 'medicine')

10.
SELECT yr, subject, winner
FROM nobel
WHERE (yr < 1910 AND subject = 'Medicine') OR (yr >= 2004 AND subject = 'Literature')

11.
SELECT *
FROM nobel
WHERE winner = 'PETER GRÜNBERG'

12.
SELECT *
FROM nobel
WHERE winner = 'EUGENE O''NEILL'

13.
SELECT winner, yr, subject
FROM nobel
WHERE winner LIKE 'sir%' 
ORDER BY yr DESC, winner ASC

14.
SELECT winner, subject
FROM nobel
WHERE yr = 1984
ORDER BY subject IN ('physics','chemistry'), subject, winner

Quiz.
7 out of 7