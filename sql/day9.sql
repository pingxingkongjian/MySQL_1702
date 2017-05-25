SELECT *
FROM scott.dept;

CREATE VIEW scott.v_emp_10
AS
  SELECT *
  FROM scott.emp
  WHERE DEPTNO = 10;

SHOW FULL TABLES IN scott
WHERE table_type LIKE 'view';

SHOW FULL TABLES IN scott;

DROP VIEW scott.v_emp_10;

DESC scott.dept;

SHOW FULL COLUMNS FROM scott.dept;
SHOW TABLE STATUS FROM db_sc;
SHOW CREATE TABLE db_sc.student;

SHOW CREATE VIEW scott.v_emp_10;

SELECT *
FROM scott.v_emp_10
WHERE JOB = 'manager';

SELECT *
FROM scott.v_emp_10
WHERE DEPTNO = 10 AND JOB = 'manager';

CREATE OR REPLACE VIEW scott.v_emp_dept
  AS
  SELECT
    e.ENAME,
    d.DNAME
  FROM scott.emp e LEFT OUTER JOIN scott.dept d
    ON e.DEPTNO = d.DEPTNO;




SELECT *
FROM scott.v_emp_dept;

UPDATE scott.v_emp_dept
SET scott.v_emp_dept.ENAME = 'scott'
WHERE scott.v_emp_dept.ENAME = 'scott new';

CREATE VIEW scott.v_max
  AS
  SELECT max(sal)max_sal
  FROM scott.emp;

SELECT *
FROM scott.v_max;

UPDATE scott.v_max
    SET max_sal = 6000;

CREATE VIEW scott.v_union
  AS
  SELECT ename
  FROM scott.emp
  WHERE DEPTNO = 10

  UNION

    SELECT ename
  FROM scott.emp
  WHERE DEPTNO = 20;

SELECT *
FROM scott.v_union;

UPDATE scott.v_union
    SET scott.v_union.ename = 'SCOTT'
WHERE scott.v_union.ename = 'scott';

SELECT
  EMPNO,
  ENAME
FROM scott.emp AS e
WHERE sal > (
  SELECT AVG(sal)
  FROM scott.emp
  WHERE e.DEPTNO = e.DEPTNO
);

-- ------------------
/*
transaction 事务
SELECT ...
DML
---------------------------------
UPDATE1 ...   ok    ok    X    X|
UPDATE2 ...   ok    X    ok    X|
---------------------------------
SELECT ...
*/

START TRANSACTION;

SELECT *
FROM scott.emp;

TRUNCATE TABLE scott.emp; --

DELETE FROM scott.emp; -- DML

ROLLBACK; -- roll back 回滚

-- update ALLEN sal - 1000
-- update WARD  sal + 1000

START TRANSACTION;
-- DML
UPDATE scott.emp
SET ENAME = 'allen new'
WHERE ENAME = 'allen';

COMMIT; -- 提交\ [kə'mɪt]

ROLLBACK;

CREATE VIEW scott.v_test -- DDL COMMIT
AS
  SELECT *
  FROM scott.dept;

SELECT *
FROM scott.emp;

-- descend
-- describe


-- save point 保留点
START TRANSACTION;

UPDATE scott.emp
SET ename = 'ALLEN'
WHERE EMPNO = 7499;

SAVEPOINT a;

DELETE FROM scott.emp
WHERE EMPNO = 7499;

SAVEPOINT b;

INSERT INTO scott.emp (EMPNO, ENAME)
  VALUE (1234, 'tester');

SAVEPOINT c;

DELETE FROM scott.emp;

COMMIT;
ROLLBACK TO a;
ROLLBACK;

SELECT *
FROM scott.emp;