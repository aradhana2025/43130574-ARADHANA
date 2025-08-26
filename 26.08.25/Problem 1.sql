-- Question 1: Employee Eligibility Check Write an SQL query to find employees who meet all of the following criteria: Work in either the IT or HR department. Have a salary greater than 50,000 or more than 6 years of service. Exclude employees whose name starts with the letter 'A'.
show databases;
CREATE DATABASE IF NOT EXISTS company;
USE company;
DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    salary INT,
    years_of_service INT
);
INSERT INTO employees VALUES
(1, 'Arun',    'HR', 55000, 7),
(2, 'Priya',   'Finance', 60000, 5),
(3, 'John',    'IT', 52000, 4),
(4, 'Meena',   'HR', 58000, 3),
(5, 'Ravi',    'IT', 48000, 8),
(6, 'Kiran',   'HR', 61000, 7),
(7, 'Anita',   'IT', 75000, 6),
(8, 'Rahul',   'IT', 53000, 7),
(9, 'Dev',     'HR', 59000, 8);
SELECT * FROM employees
WHERE (department = 'IT' OR department = 'HR')
  AND (salary > 50000 OR years_of_service > 6)
  AND emp_name NOT LIKE 'A%';
