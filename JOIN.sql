-- https://sqlzoo.net/wiki/The_JOIN_operation

1.
SELECT matchid, player
FROM goal 
WHERE teamid = 'GER'

2.
SELECT id, stadium, team1, team2
FROM game
WHERE id = 1012

3.
SELECT player, teamid, stadium, mdate
FROM game
JOIN goal ON (id=matchid)
WHERE teamid = 'GER'

4.
SELECT team1, team2, player
FROM game
JOIN goal ON (id=matchid)
WHERE player LIKE 'Mario%'

5.
SELECT player, teamid, coach, gtime
FROM goal
JOIN eteam ON teamid = id
WHERE gtime <= 10

6.
SELECT mdate, teamname
FROM game
JOIN eteam ON eteam.id = team1
WHERE eteam.coach = 'Fernando Santos'

7.
SELECT player
FROM goal
JOIN game ON matchid = id
WHERE stadium = 'National Stadium, Warsaw'

8.
SELECT DISTINCT player
FROM game
JOIN goal ON matchid = id 
WHERE (team1 = 'GER' OR team2 = 'GER')
AND teamid <> 'GER'

9.
SELECT teamname, COUNT(teamid) AS 'Team Goals'
FROM eteam
JOIN goal ON id = teamid
GROUP BY teamname

10.
SELECT stadium, count(matchid) AS 'Stadium Goals'
FROM game
JOIN goal ON matchid = id
GROUP BY stadium

11.
SELECT matchid, mdate, COUNT(teamid) AS 'Goals Scored'
FROM game
JOIN goal ON matchid = id 
WHERE (team1 = 'POL' OR team2 = 'POL')
GROUP BY matchid, mdate

12.
SELECT matchid, mdate, COUNT(*) AS 'Goals Scored'
FROM game
JOIN goal ON matchid = id
WHERE teamid = 'GER'
GROUP BY matchid, mdate

13.
SELECT mdate,
team1, SUM(CASE WHEN teamid = team1 THEN 1 ELSE 0 END) AS score1,
team2, SUM(CASE WHEN teamid = team2 THEN 1 ELSE 0 END) AS score2
FROM game JOIN goal ON matchid = id
GROUP BY mdate, team1, team2
ORDER BY mdate

Quiz.
7 out of 7