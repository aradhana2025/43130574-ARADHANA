
CREATE DATABASE IF NOT EXISTS cascading_demo;
USE cascading_demo;


CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);


CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);


INSERT INTO Department VALUES (1, 'HR'), (2, 'IT');

INSERT INTO Employee VALUES 
(101, 'Alice', 1),
(102, 'Bob', 1),
(103, 'Charlie', 2);


DELETE FROM Department WHERE dept_id = 1;


UPDATE Department SET dept_id = 5 WHERE dept_id = 2;


SELECT * FROM Employee;
SELECT * FROM Department;
