SHOW FULL COLUMNS FROM db_1702.student;

SELECT *
FROM db_1702.student;

INSERT INTO db_1702.student
    VALUES (NULL ,741852,'Tom','I\'M...','F',19,1.7,12.34,'1998-1-2','2017-5-17 9:02:01');

INSERT INTO db_1702.student(name)
    VALUES ('Tom');

INSERT INTO db_1702.student(name)
    VALUES ('N1'),('N2'),('N3');

SHOW CREATE TABLE db_1702.student; -- 显示建表语句

SELECT *
FROM db_1702.student;

UPDATE db_1702.student
    SET gender = '女';

UPDATE db_1702.student
    SET height = 1.6
WHERE id = 10001;

UPDATE db_1702.student
    SET height = 1.7, name = '李四'
WHERE id = 10001;