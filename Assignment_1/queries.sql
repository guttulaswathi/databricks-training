/* =========================
   SELECT QUERIES
   ========================= */

-- Display all employee details
SELECT * FROM Employees;

-- Display employee names and salaries
SELECT emp_name, salary FROM Employees;

-- Display employee names and departments
SELECT emp_name, department FROM Employees;

-- Display all employees from IT department
SELECT * FROM Employees
WHERE department = 'IT';

-- Display employee names and experience
SELECT emp_name, experience FROM Employees;


/* =========================
   WHERE CLAUSE QUERIES
   ========================= */

-- Employees with salary greater than 70000
SELECT * FROM Employees
WHERE salary > 70000;

-- Employees from Hyderabad
SELECT * FROM Employees
WHERE city = 'Hyderabad';

-- Employees with experience less than 4 years
SELECT * FROM Employees
WHERE experience < 4;

-- Employees from Finance department
SELECT * FROM Employees
WHERE department = 'Finance';

-- Employee with salary equal to 52000
SELECT * FROM Employees
WHERE salary = 52000;


/* =========================
   GROUP BY QUERIES
   ========================= */

-- Total salary by department
SELECT department, SUM(salary)
FROM Employees
GROUP BY department;

-- Average salary by department
SELECT department, AVG(salary)
FROM Employees
GROUP BY department;

-- Employee count by city
SELECT city, COUNT(emp_id)
FROM Employees
GROUP BY city;

-- Maximum salary by department
SELECT department, MAX(salary)
FROM Employees
GROUP BY department;

-- Minimum experience by department
SELECT department, MIN(experience)
FROM Employees
GROUP BY department;


/* =========================
   HAVING CLAUSE QUERIES
   ========================= */

-- Departments having more than 3 employees
SELECT department, COUNT(emp_id)
FROM Employees
GROUP BY department
HAVING COUNT(emp_id) > 3;

-- Departments with average salary greater than 60000
SELECT department, AVG(salary)
FROM Employees
GROUP BY department
HAVING AVG(salary) > 60000;

-- Cities having more than 2 employees
SELECT city, COUNT(emp_id)
FROM Employees
GROUP BY city
HAVING COUNT(emp_id) > 2;

-- Departments with total salary greater than 200000
SELECT department, SUM(salary)
FROM Employees
GROUP BY department
HAVING SUM(salary) > 200000;

-- Departments with maximum salary greater than 90000
SELECT department, MAX(salary)
FROM Employees
GROUP BY department
HAVING MAX(salary) > 90000;


/* =========================
   TOP QUERIES (SQL SERVER)
   ========================= */

-- Top 5 highest paid employees
SELECT TOP 5 *
FROM Employees
ORDER BY salary DESC;

-- Top 3 employees with highest experience
SELECT TOP 3 *
FROM Employees
ORDER BY experience DESC;

-- Top 2 salaries from Finance department
SELECT TOP 2 salary
FROM Employees
WHERE department = 'Finance'
ORDER BY salary DESC;

-- Top 4 employees from Hyderabad
SELECT TOP 4 *
FROM Employees
WHERE city = 'Hyderabad';

-- Highest paid employee
SELECT TOP 1 *
FROM Employees
ORDER BY salary DESC;


/* =========================
   DISTINCT QUERIES
   ========================= */

-- Distinct employee names
SELECT DISTINCT emp_name
FROM Employees;

-- Distinct cities
SELECT DISTINCT city
FROM Employees;

-- Distinct salaries
SELECT DISTINCT salary
FROM Employees;

-- Distinct department and city combinations
SELECT DISTINCT department, city
FROM Employees;

-- Distinct experience values
SELECT DISTINCT experience
FROM Employees;
