-- ============================================
-- DAY 1: SQL BASICS
-- Data Analyst Journey
-- ============================================

-- Create the student table

CREATE TABLE student (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(30),
    age INT
);


-- Insert sample data

INSERT INTO student VALUES
(1, 'Rango', 'CSE', 22),
(2, 'Anu', 'ECE', 21),
(3, 'Vijay', 'CSE', 23),
(4, 'Priya', 'IT', 20),
(5, 'Rahul', 'EEE', 22);


-- View all students

SELECT *
FROM student;


-- Select specific columns

SELECT name, department
FROM student;


-- WHERE condition

SELECT *
FROM student
WHERE department = 'CSE';


-- Comparison operator

SELECT *
FROM student
WHERE age > 21;


-- DISTINCT values

SELECT DISTINCT department
FROM student;


-- COUNT records

SELECT COUNT(*)
FROM student;


-- ORDER BY age

SELECT *
FROM student
ORDER BY age;


-- LIKE operator

SELECT *
FROM student
WHERE name LIKE 'A%';


-- UPDATE a record

UPDATE student
SET age = 23
WHERE id = 2;


-- DELETE a record

DELETE FROM student
WHERE id = 5;


-- View the final table

SELECT *
FROM student;


-- Show available tables

SHOW TABLES;
