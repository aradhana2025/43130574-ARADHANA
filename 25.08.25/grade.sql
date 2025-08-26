SHOW DATABASES;
CREATE DATABASE IF NOT EXISTS school;
USE school;
DROP TABLE IF EXISTS student_marks;
CREATE TABLE student_marks (
    student_id INT PRIMARY KEY,
    marks INT
);
INSERT INTO student_marks VALUES
(1, 20),
(2, 30),
(3, 47),
(4, 55),
(5, 65),
(6, 85);
SELECT student_id, marks,
CASE
    WHEN marks < 25 THEN 'F'
    WHEN marks >= 25 AND marks < 45 THEN 'E'
    WHEN marks >= 45 AND marks < 50 THEN 'D'
    WHEN marks >= 50 AND marks < 60 THEN 'C'
    WHEN marks >= 60 AND marks <= 80 THEN 'B'
    ELSE 'A'
END AS grade
FROM student_marks;
