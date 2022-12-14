-- https://sqlzoo.net/wiki/Using_Null

1.
SELECT name
FROM teacher
WHERE dept IS NULL

2.
SELECT teacher.name teacher_name, dept.name dept_name
FROM teacher 
INNER JOIN dept
ON (teacher.dept = dept.id);
 
3.
SELECT teacher.name teacher_name, dept.name dept_name
FROM teacher
LEFT JOIN dept
ON (teacher.dept = dept.id);

4.
SELECT teacher.name, dept.name
FROM teacher
RIGHT OUTER JOIN dept
ON teacher.dept = dept.id

5.
SELECT name, COALESCE(mobile, '07986 444 2266')
FROM teacher

6.
SELECT name, COALESCE(dept, 'None')
FROM teacher

7.
SELECT COUNT(name), COUNT(mobile)
FROM teacher

8.
SELECT dept.name ,COUNT(teacher.name)
FROM teacher
RIGHT OUTER JOIN dept
ON teacher.dept = dept.id
GROUP BY dept.name

9.
SELECT teacher.name,  CASE WHEN teacher.dept IN (1, 2) THEN 'Sci'
ELSE 'Art' END
FROM teacher

10.
SELECT teacher.name, CASE WHEN teacher.dept IN (1, 2) THEN 'Sci'
WHEN teacher.dept = 3 THEN 'Art' ELSE 'None' END
FROM teacher

Quiz.
6 out of 6