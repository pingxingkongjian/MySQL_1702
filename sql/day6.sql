SELECT *
FROM scott.emp;

SELECT *
FROM scott.dept;

SELECT
  DISTINCT
  d.DEPTNO,
  d.DNAME
FROM scott.dept d
  INNER JOIN scott.emp e
    ON e.DEPTNO = d.DEPTNO;

SELECT
  e1.ENAME 员工姓名,
  e2.ENAME 经理姓名
FROM scott.emp e1
  INNER JOIN scott.emp e2
    ON e1.MGR = e2.EMPNO;

SELECT
  e.ENAME,
  d.DNAME
FROM scott.emp e LEFT   OUTER JOIN scott.dept d
  ON e.DEPTNO = d.DEPTNO;

SHOW DATABASES ;

USE scott;


