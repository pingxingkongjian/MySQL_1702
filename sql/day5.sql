SELECT *
FROM scott.emp;

SELECT *
FROM scott.emp
LIMIT 3;   -- limit 限制

SELECT *
FROM scott.emp
LIMIT 3,4;

SELECT *
FROM scott.emp
LIMIT 3 OFFSET 1; -- offset 位移，

SELECT *
FROM scott.emp
ORDER BY ENAME
LIMIT 3 OFFSET 0;

SELECT *
FROM scott.emp
WHERE ENAME LIKE 'a%';  -- like 像 模糊匹配

SELECT *
FROM scott.emp
WHERE ENAME LIKE '%\_%'ESCAPE '\\';

INSERT INTO scott.emp(EMPNO,ENAME)VALUES (2222,'A_ADAMS');

SELECT *
FROM scott.emp
WHERE ENAME REGEXP '[^a-c]+'; -- ^这个符号表示包含 a-c 之外的字符

SELECT *
FROM scott.emp
WHERE HIREDATE RLIKE '';

SELECT *
FROM scott.emp
WHERE DEPTNO NOT IN (10,20);

SELECT *
FROM scott.emp
WHERE JOB NOT IN ('manager','clerk');

SELECT *
FROM scott.emp
WHERE SAL NOT BETWEEN 2000 AND 3000; --  [min, max] , min )(max,0

SELECT ENAME  '名字', SAL  '基本工资'
  FROM scott.emp;

SELECT e.ENAME
  FROM scott.emp AS e;

SELECT *
FROM scott.emp
WHERE DEPTNO IS NOT NULL ;

SELECT *
FROM scott.emp
WHERE COMM IS NULL ;

UPDATE scott.emp
    SET JOB = null
WHERE ENAME = 'jones';

SELECT ENAME,
  SAL + ifnull(COMM,0)
  FROM scott.emp;