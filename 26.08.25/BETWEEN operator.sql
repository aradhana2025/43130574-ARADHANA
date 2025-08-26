show databases;
create database employees;
CREATE TABLE IF NOT EXISTS employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept VARCHAR(30),
    salary DECIMAL(10,2),
    years_of_service INT
);
INSERT INTO employees (emp_id, emp_name, dept, salary, years_of_service) VALUES
(101, 'John', 'IT', 60000, 5),
(102, 'Alice', 'HR', 45000, 3),
(103, 'Bob', 'IT', 70000, 8),
(104, 'Carol', 'Sales', 50000, 6),
(105, 'David', 'HR', 48000, 7);
SELECT * 
FROM employees
WHERE salary BETWEEN 45000 AND 65000;
SELECT * 
FROM employees
WHERE salary NOT BETWEEN 45000 AND 65000;
