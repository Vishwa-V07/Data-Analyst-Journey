-- ============================================
-- DAY 2: FILTERING & AGGREGATIONS
-- Data Analyst Journey
-- ============================================

-- View all records

SELECT *
FROM student;


-- WHERE with equality

SELECT *
FROM student
WHERE department = 'CSE';


-- WHERE with greater than

SELECT *
FROM student
WHERE age > 21;


-- WHERE with less than

SELECT *
FROM student
WHERE age < 22;


-- AND operator

SELECT *
FROM student
WHERE department = 'CSE'
AND age > 21;


-- OR operator

SELECT *
FROM student
WHERE department = 'CSE'
OR department = 'IT';


-- IN operator

SELECT *
FROM student
WHERE department IN ('CSE', 'IT');


-- BETWEEN operator

SELECT *
FROM student
WHERE age BETWEEN 21 AND 23;


-- LIKE operator

SELECT *
FROM student
WHERE name LIKE 'A%';


-- COUNT

SELECT COUNT(*) AS total_students
FROM student;


-- MIN

SELECT MIN(age) AS minimum_age
FROM student;


-- MAX

SELECT MAX(age) AS maximum_age
FROM student;


-- AVG

SELECT AVG(age) AS average_age
FROM student;


-- SUM

SELECT SUM(age) AS total_age
FROM student;


-- GROUP BY department

SELECT department, COUNT(*) AS student_count
FROM student
GROUP BY department;


-- GROUP BY with AVG

SELECT department, AVG(age) AS average_age
FROM student
GROUP BY department;


-- ORDER BY

SELECT *
FROM student
ORDER BY age DESC;


-- GROUP BY with HAVING

SELECT department, COUNT(*) AS student_count
FROM student
GROUP BY department
HAVING COUNT(*) > 1;
