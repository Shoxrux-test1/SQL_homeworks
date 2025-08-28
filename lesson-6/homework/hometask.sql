--Lesson-6: Practice
--1 Puzzle 1
SELECT DISTINCT col1, col2
FROM InputTbl;

SELECT col1, col2
FROM InputTbl
GROUP BY col1, col2;
--2 Puzzle 2
SELECT *
FROM TestMultipleZero
WHERE NOT (A = 0 AND B = 0 AND C = 0 AND D = 0);

SELECT *
FROM TestMultipleZero
WHERE A + B + C + D <> 0;

--3 Puzzle 3
SELECT *
FROM section1
WHERE id % 2 = 1;
--4 Puzzle 4
SELECT TOP 1 *
FROM section1
ORDER BY id ASC;
--5 Puzzle 5
SELECT TOP 1 *
FROM section1
ORDER BY id DESC;
--6 Puzzle 6:
SELECT *
FROM section1
WHERE name LIKE 'b%';
--7 Puzzle 7
SELECT *
FROM ProductCodes
WHERE Code LIKE '%\_%' ESCAPE '\';

