SHOW DATABASES;
USE sathyabama;


CREATE TABLE ece (
    sid INT,
    sname VARCHAR(30),
    smarks INT,
    sphone BIGINT
);

INSERT INTO ece VALUES (1001,'ram',95,'srilanka');
select * from ece;
ALTER TABLE ece ADD(
         semail varchar(25),sphone int8);
         
ALTER TABLE ece DROP COLUMN semail;
         
ALTER TABLE ece ADD(
         scountry varchar(40) default 'India'
);

ALTER TABLE ece RENAME coLumn 
   scountry TO slocation;
   
UPDATE ece SET slocation = 'India'
WHERE sid=1004;

UPDATE ece SET slocation = 'India',smarks=30
WHERE sid=1004;

UPDATE ece SET smarks = smarks+1;
select * from ece;


