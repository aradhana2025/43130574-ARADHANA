SHOW DATABASES;
CREATE DATABASE IF NOT EXISTS company_db;
USE company_db;
CREATE TABLE IF NOT EXISTS workers (
    worker_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    dept VARCHAR(30),
    salary DECIMAL(10,2)
);
INSERT INTO workers (worker_id, first_name, dept, salary) VALUES
(101, 'Vikram', 'IT', 250000),
(102, 'Alice', 'HR', 120000),
(103, 'Bob', 'Admin', 90000),
(104, 'Carol', 'Finance', 70000),
(105, 'David', 'IT', 80000),
(106, 'Vinod', 'IT', 210000),
(107, 'Eve', 'HR', 75000),
(108, 'Victor', 'Sales', 220000),
(109, 'Sam', 'Admin', 150000),
(110, 'Vimal', 'Finance', 300000);
SELECT * FROM workers WHERE dept NOT IN ('HR', 'Admin') AND salary BETWEEN 70000 AND 300000;
SELECT * FROM workers WHERE first_name LIKE 'V%' AND salary >= 200000;
SELECT * FROM workers WHERE dept <> 'Admin' AND salary < 100000;
