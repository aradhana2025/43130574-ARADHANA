-- Step 1: Create database (optional)
CREATE DATABASE IF NOT EXISTS cascading_demo;
USE cascading_demo;

-- Step 2: Create parent table
CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

-- Step 3: Create child table with cascading
CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- Step 4: Insert values
INSERT INTO Department VALUES (1, 'HR'), (2, 'IT');

INSERT INTO Employee VALUES 
(101, 'Alice', 1),
(102, 'Bob', 1),
(103, 'Charlie', 2);

-- Step 5: Test cascading
-- If we delete department HR, all employees in HR are deleted automatically
DELETE FROM Department WHERE dept_id = 1;

-- If we update dept_id from 2 to 5 in Department,
-- all employees under dept_id 2 will also change to 5
UPDATE Department SET dept_id = 5 WHERE dept_id = 2;

-- Check result
SELECT * FROM Employee;
SELECT * FROM Department;
