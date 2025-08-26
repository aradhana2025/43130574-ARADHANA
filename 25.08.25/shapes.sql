SHOW DATABASES;
CREATE DATABASE IF NOT EXISTS school;
USE school;
DROP TABLE IF EXISTS rectangle;
CREATE TABLE rectangle (
    id INT PRIMARY KEY,
    length INT,
    breadth INT
);
INSERT INTO rectangle VALUES
(1, 10, 10),   -- Square
(2, 15, 20);   -- Rectangle
SELECT id, length, breadth,
CASE
    WHEN length = breadth THEN 'Square'
    ELSE 'Rectangle'
END AS shape
FROM rectangle;
