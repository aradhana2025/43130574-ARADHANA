SHOW DATABASES;
USE sathyabama;


CREATE TABLE ece (
    sid INT,
    sname VARCHAR(30),
    smarks INT,
    sphone BIGINT
);

INSERT INTO ece (sid, sname, smarks, sphone) VALUES
(1001,'ram',95,9876543210),
(1002,'sam',90,9876501234),
(1003,'jam',93,9876505678),
(1004,'tam',96,9876509876),
(1005,'zam',92,9876502468);

SELECT * FROM ece;
