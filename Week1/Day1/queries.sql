-- BASIC QUERIES

-- 1
SELECT * FROM employee;

-- 2
SELECT name, salary FROM employee;

-- 3
SELECT * FROM employee WHERE age > 30;

-- 4
SELECT name FROM department;

-- 5
SELECT * FROM employee WHERE department_id = 1;

-- STRING QUERIES

-- 6
SELECT * FROM employee WHERE name LIKE 'J%';

-- 7
SELECT * FROM employee WHERE name LIKE '%e';

-- 8
SELECT * FROM employee WHERE name LIKE '%a%';

-- 9
SELECT * FROM employee WHERE LENGTH(name) = 9;

-- 10
SELECT * FROM employee WHERE name LIKE '_o%';

-- DATE QUERIES

-- 11
SELECT * FROM employee WHERE YEAR(hire_date) = 2020;

-- 12
SELECT * FROM employee WHERE MONTH(hire_date) = 1;

-- AGGREGATE

-- 13
SELECT SUM(salary) FROM employee;

-- 14
SELECT AVG(salary) FROM employee;

-- 15
SELECT MIN(salary) FROM employee;

-- GROUP BY

-- 16
SELECT department_id, COUNT(*) FROM employee GROUP BY department_id;

-- 17
SELECT department_id, AVG(salary) FROM employee GROUP BY department_id;

-- ORDER BY

-- 18
SELECT * FROM employee ORDER BY salary ASC;

-- 19
SELECT * FROM employee ORDER BY age DESC;

-- JOINS

-- 20
SELECT e.name, d.name
FROM employee e
JOIN department d
ON e.department_id = d.department_id;
