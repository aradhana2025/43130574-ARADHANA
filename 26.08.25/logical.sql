SHOW DATABASES;
CREATE DATABASE IF NOT EXISTS company;
USE company;
DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    salary INT
);
INSERT INTO employees VALUES
(1, 'Arun',   'HR',       25000),
(2, 'Priya',  'Finance',  40000),
(3, 'John',   'IT',       55000),
(4, 'Meena',  'Finance',  30000),
(5, 'Ravi',   'IT',       70000),
(6, 'Kiran',  'HR',       20000),
(7, 'Anita',  'Admin',   1500000),
(8, 'Rahul',  'Admin',   2500000),
(9, 'Dev',    'Admin',   3000000);
SELECT * FROM employees WHERE department = 'Admin' AND salary >= 2000000;
SELECT * FROM employees WHERE department = 'HR' OR department = 'Finance';
SELECT * FROM employees WHERE NOT department = 'IT';
