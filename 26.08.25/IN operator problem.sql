-- Write an SQL query to:Select products that belong to the categories Electronics, Stationery, or Toys.Have a price less than 500.Exclude products that are out of stock (stock = 0).
SHOW DATABASES;
CREATE DATABASE IF NOT EXISTS company_db;
USE company_db;
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
SELECT * FROM employees;
SELECT * 
FROM employees
WHERE dept IN ('IT', 'HR') 
  AND salary > 50000;
SELECT * 
FROM employees
WHERE dept NOT IN ('Sales');
