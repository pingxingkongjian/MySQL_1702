DROP DATABASE IF EXISTS db_exam;

CREATE DATABASE db_exam;

SHOW DATABASES ;

DROP TABLE IF EXISTS db_exam.student;

CREATE TABLE db_exam.student(
  id INT AUTO_INCREMENT PRIMARY KEY
  COMMENT 'ID PK',
  name VARCHAR(255) COMMENT '名字',
  age INT COMMENT '年龄',
  gender CHAR(2) COMMENT '性别',
  dob DATE COMMENT '出生日期',
  departmentId VARCHAR(10) COMMENT '编号'
);

SELECT *
FROM db_exam.student;

INSERT INTO db_exam.student VALUES (NULL ,'Tom',20,'男','1998-01-11',17020101);
INSERT INTO db_exam.student VALUES (NULL ,'王源',20,'男','1998-01-12',17020102);
INSERT INTO db_exam.student VALUES (NULL ,'张三',20,'男','1998-01-13',17020103);
INSERT INTO db_exam.student VALUES (NULL ,'李四',20,'男','1998-01-14',17020104);
INSERT INTO db_exam.student VALUES (NULL ,'王峰',20,'男','1998-01-15',17020105);
INSERT INTO db_exam.student VALUES (NULL ,'刘备',20,'男','1998-01-16',17020106);

DROP TABLE IF EXISTS db_exam.department;

CREATE TABLE db_exam.department(
  id INT AUTO_INCREMENT PRIMARY KEY
  COMMENT 'ID PK',
  title VARCHAR(255) COMMENT '专业'
);

INSERT INTO db_exam.department VALUES (null,'计算机专业');

SELECT *
FROM db_exam.department;

DROP TABLE IF EXISTS db_exam.course;

CREATE TABLE db_exam.course(
  id INT AUTO_INCREMENT PRIMARY KEY
  COMMENT 'ID PK',
  title VARCHAR(255) COMMENT '课程',
  credit INT COMMENT '学分'
);

INSERT INTO db_exam.course VALUES (NULL ,'JAVA',100);
INSERT INTO db_exam.course VALUES (NULL ,'前端',100);
INSERT INTO db_exam.course VALUES (NULL ,'UI',100);


SELECT *
FROM db_exam.course;

DROP TABLE IF EXISTS db_exam.student_course;

CREATE TABLE db_exam.student_course(
  id INT AUTO_INCREMENT PRIMARY KEY
  COMMENT 'ID PK',
  studentID INT COMMENT '学生 ID',
  departmentId INT COMMENT '编号 ID',
  grade INT COMMENT '成绩'
);

INSERT INTO db_exam.student_course VALUES (NULL ,1,2,80);
INSERT INTO db_exam.student_course VALUES (NULL ,2,2,90);
INSERT INTO db_exam.student_course VALUES (NULL ,1,2,70);
INSERT INTO db_exam.student_course VALUES (NULL ,1,2,60);
INSERT INTO db_exam.student_course VALUES (NULL ,1,2,80);

SELECT *
FROM db_exam.student_course;

UPDATE db_exam.student_course
    SET db_exam.student_course.grade = 50
WHERE id = 1;

SHOW FULL COLUMNS FROM db_exam.student_course;

SELECT *
FROM db_exam.student
WHERE name REGEXP '王';






