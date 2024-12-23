-- CREATE
CREATE DATABASE IF NOT EXISTS test;
CREATE TABLE try_table(
    id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    gender CHAR,
    addres INT

);

DESCRIBE try_table;

-- ALTER
ALTER TABLE try_table ADD city VARCHAR(50);

DESCRIBE try_table;

ALTER TABLE try_table MODIFY addres VARCHAR(50);
ALTER TABLE try_table MODIFY COLUMN addres INT;

DESCRIBE try_table;

ALTER TABLE try_table DROP COLUMN city;

DESCRIBE try_table;

-- TRUNCATE

INSERT INTO try_table (id , addres , gender ,age,first_name,last_name)
VALUES (1 , 6 ,'M' ,20 ,'ARUN','KUMAR');

SELECT * FROM try_table;

TRUNCATE TABLE try_table;

SELECT * FROM try_table;

-- DROP
DROP TABLE try_table;

DESCRIBE try_table;

DROP DATABASE test;


-- RENAME 

USE hello;

RENAME TABLE employee TO employees;

--RENAME DATABASE hello TO how_are_you; it does not work

--DROP

DROP SCHEMA hello;
DROP DATABASE IF EXISTS hello;
DROP DATABASE IF EXISTS new_database;


------------- DML ----------------

CREATE DATABASE test;

USE test;
CREATE TABLE try_table (
    id int,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

--1.inser 2.update 3.delete these all are row oparations

--INSERT
INSERT INTO try_table (first_name,last_name,id)
VALUES ('ARUN','KUMAR',1);
INSERT INTO try_table (first_name,last_name,id)
VALUES ('gnana','pragasam',2);
commit;

SELECT * FROM try_table;

-- UPDATE

UPDATE try_table
SET first_name = 'gnana'
WHERE id =1;

SELECT * FROM try_table;

ALTER TABLE try_table ADD COLUMN city VARCHAR(50);
INSERT INTO try_table (city) VALUES ('ERODE') ;

SELECT * FROM try_table;

-- DELETE

UPDATE try_table
SET id=2
LIMIT 1;

UPDATE try_table
SET first_name = CASE
    WHEN id =2 THEN 'ARUN'
    WHEN id = 1 THEN 'gnana'
    END,
 last_name = CASE
 WHEN id=2 AND first_name ='arun' THEN 'kumar'
 WHEN id = 1 THEN 'pragasam'
 END
 WHERE id IN (1,2);

 DELETE FROM try_table WHERE id=Null;

 SELECT * FROM try_table;

 DELETE FROM try_table WHERE city='erode';

 --TCL
 SET AUTOCOMMIT = ON;

 SELECT * FROM try_table;

 DELETE FROM try_table;

 ROLLBACK;

 SELECT * FROM try_table;
 commit;

 savepoint




