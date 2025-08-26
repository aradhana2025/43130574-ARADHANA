SHOW DATABASES;
CREATE DATABASE IF NOT EXISTS school;
USE school;
DROP TABLE IF EXISTS numbers;
CREATE TABLE numbers (
    id INT PRIMARY KEY,
    num INT
);
INSERT INTO numbers VALUES
(1, 1),     -- Positive
(2, -1),    -- Negative
(3, -25),   -- Negative
(4, 50);    -- Positive
SELECT id, num, ABS(num) AS absolute_value
FROM numbers;
