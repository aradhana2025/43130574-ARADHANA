CREATE DATABASE IF NOT EXISTS company;
USE company;

DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept VARCHAR(30)
);

INSERT INTO employees VALUES (1, 'Ravi', 'HR');
INSERT INTO employees VALUES (2, 'Priya', 'Finance');
INSERT INTO employees VALUES (3, 'Kumar', 'IT');

SET AUTOCOMMIT = 0;

START TRANSACTION;

INSERT INTO employees VALUES (4, 'Anitha', 'Sales');
INSERT INTO employees VALUES (5, 'Vikram', 'Marketing');

SAVEPOINT sp1;

UPDATE employees SET dept = 'Operations' WHERE emp_id = 2;

ROLLBACK TO sp1;

DELETE FROM employees WHERE emp_id = 3;

COMMIT;

SET AUTOCOMMIT = 1;

select *from employees;