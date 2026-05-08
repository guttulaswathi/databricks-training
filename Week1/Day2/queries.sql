-- 21. Find departments having more than 1 employee
SELECT department_id, COUNT(*) AS total_employees
FROM employee
GROUP BY department_id
HAVING COUNT(*) > 1;

-- 22. Find departments with average salary greater than 55000
SELECT department_id, AVG(salary) AS avg_salary
FROM employee
GROUP BY department_id
HAVING AVG(salary) > 55000;

-- 23. Display employees ordered by salary ascending
SELECT * FROM employee
ORDER BY salary ASC;

-- 24. Display employees ordered by age descending
SELECT * FROM employee
ORDER BY age DESC;

-- 25. Display employees ordered by hire_date
SELECT * FROM employee
ORDER BY hire_date ASC;

-- 26. Display employees ordered by department_id and salary
SELECT * FROM employee
ORDER BY department_id, salary;

-- 27. Display employee names with department names
SELECT e.name AS employee_name,
       d.name AS department_name
FROM employee e
JOIN department d
ON e.department_id = d.department_id;

-- 28. Display project names with department names
SELECT p.name AS project_name,
       d.name AS department_name
FROM project p
JOIN department d
ON p.department_id = d.department_id;

-- 29. Display employee names and project names
SELECT e.name AS employee_name,
       p.name AS project_name
FROM employee e
JOIN project p
ON e.department_id = p.department_id;

-- 30. Count employees in each department
SELECT d.name AS department_name,
       COUNT(e.emp_id) AS total_employees
FROM department d
LEFT JOIN employee e
ON d.department_id = e.department_id
GROUP BY d.name;

-- 31. Find highest salary
SELECT MAX(salary) FROM employee;

-- 32. Find lowest salary
SELECT MIN(salary) FROM employee;

-- 33. Find average salary
SELECT AVG(salary) FROM employee;

-- 34. Find total salary
SELECT SUM(salary) FROM employee;

-- 35. Count total employees
SELECT COUNT(*) FROM employee;

-- 36. Find employees earning more than average salary
SELECT *
FROM employee
WHERE salary > (
    SELECT AVG(salary)
    FROM employee
);

-- 37. Find employees earning highest salary
SELECT *
FROM employee
WHERE salary = (
    SELECT MAX(salary)
    FROM employee
);

-- 38. Find employees earning lowest salary
SELECT *
FROM employee
WHERE salary = (
    SELECT MIN(salary)
    FROM employee
);

-- 39. Find second highest salary
SELECT MAX(salary)
FROM employee
WHERE salary < (
    SELECT MAX(salary)
    FROM employee
);

-- 40. Find employees hired after 2020
SELECT *
FROM employee
WHERE hire_date > '2020-12-31';

-- 41. Find employees hired before 2020
SELECT *
FROM employee
WHERE hire_date < '2020-01-01';

-- 42. Find employees between age 25 and 35
SELECT *
FROM employee
WHERE age BETWEEN 25 AND 35;

-- 43. Find employees with salary between 40000 and 70000
SELECT *
FROM employee
WHERE salary BETWEEN 40000 AND 70000;

-- 44. Find employees whose name starts with 'A'
SELECT *
FROM employee
WHERE name LIKE 'A%';

-- 45. Find employees whose name ends with 'n'
SELECT *
FROM employee
WHERE name LIKE '%n';

-- 46. Find employees whose name contains 'o'
SELECT *
FROM employee
WHERE name LIKE '%o%';

-- 47. Find employees not in department 1
SELECT *
FROM employee
WHERE department_id != 1;

-- 48. Find distinct department IDs
SELECT DISTINCT department_id
FROM employee;

-- 49. Find employees with NULL department_id
SELECT *
FROM employee
WHERE department_id IS NULL;

-- 50. Find employees with NOT NULL department_id
SELECT *
FROM employee
WHERE department_id IS NOT NULL;

-- 51. Display current date
SELECT CURRENT_DATE;

-- 52. Display current time
SELECT CURRENT_TIME;

-- 53. Extract year from hire_date
SELECT name,
       YEAR(hire_date)
FROM employee;

-- 54. Extract month from hire_date
SELECT name,
       MONTH(hire_date)
FROM employee;

-- 55. Extract day from hire_date
SELECT name,
       DAY(hire_date)
FROM employee;

-- 56. Convert employee names to uppercase
SELECT UPPER(name)
FROM employee;

-- 57. Convert employee names to lowercase
SELECT LOWER(name)
FROM employee;

-- 58. Find length of employee names
SELECT name,
       LENGTH(name)
FROM employee;

-- 59. Concatenate employee name and salary
SELECT CONCAT(name, ' earns ', salary)
FROM employee;

-- 60. Replace 'o' with '0' in employee names
SELECT REPLACE(name, 'o', '0')
FROM employee;

-- 61. Find employees in IT department
SELECT e.name
FROM employee e
JOIN department d
ON e.department_id = d.department_id
WHERE d.name = 'IT';

-- 62. Find departments without employees
SELECT d.name
FROM department d
LEFT JOIN employee e
ON d.department_id = e.department_id
WHERE e.emp_id IS NULL;

-- 63. Find total projects in each department
SELECT d.name,
       COUNT(p.project_id)
FROM department d
LEFT JOIN project p
ON d.department_id = p.department_id
GROUP BY d.name;

-- 64. Display all employees and department names sorted by salary
SELECT e.name,
       d.name,
       e.salary
FROM employee e
JOIN department d
ON e.department_id = d.department_id
ORDER BY e.salary DESC;
