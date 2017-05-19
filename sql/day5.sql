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