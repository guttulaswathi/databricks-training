/* =========================
   COMPARISON OPERATORS
   ========================= */

-- Employees with salary greater than or equal to 80000
SELECT * FROM Employees
WHERE salary >= 80000;

-- Employees with experience less than or equal to 3
SELECT * FROM Employees
WHERE experience <= 3;

-- Employees whose salary is not equal to 45000
SELECT * FROM Employees
WHERE salary <> 45000;

-- Employees with salary less than 50000
SELECT * FROM Employees
WHERE salary < 50000;

-- Employees with experience greater than 5
SELECT * FROM Employees
WHERE experience > 5;


/* =========================
   LOGICAL OPERATORS
   ========================= */

-- Employees from IT department and salary greater than 70000
SELECT * FROM Employees
WHERE department = 'IT' AND salary > 70000;

-- Employees from Hyderabad or Bangalore
SELECT * FROM Employees
WHERE city = 'Hyderabad' OR city = 'Bangalore';

-- Employees from HR department and experience less than 3
SELECT * FROM Employees
WHERE department = 'HR' AND experience < 3;

-- Employees with salary greater than 60000 or experience greater than 6
SELECT * FROM Employees
WHERE salary > 60000 OR experience > 6;

-- Employees not from Sales department
SELECT * FROM Employees
WHERE NOT(department = 'Sales');


/* =========================
   IN AND NOT IN
   ========================= */

-- Employees working in Hyderabad or Mumbai
SELECT * FROM Employees
WHERE city IN ('Hyderabad', 'Mumbai');

-- Employees from IT or Finance departments
SELECT * FROM Employees
WHERE department IN ('IT', 'Finance');

-- Employees not from Chennai or Pune
SELECT * FROM Employees
WHERE city NOT IN ('Chennai', 'Pune');

-- Employees with salary 45000, 75000, or 91000
SELECT * FROM Employees
WHERE salary IN (45000, 75000, 91000);

-- Employees not from HR or Sales departments
SELECT * FROM Employees
WHERE department NOT IN ('HR', 'Sales');


/* =========================
   BETWEEN OPERATOR
   ========================= */

-- Employees with salary between 50000 and 80000
SELECT * FROM Employees
WHERE salary BETWEEN 50000 AND 80000;

-- Employees with experience between 3 and 6 years
SELECT * FROM Employees
WHERE experience BETWEEN 3 AND 6;

-- Employees with employee ID between 105 and 112
SELECT * FROM Employees
WHERE emp_id BETWEEN 105 AND 112;

-- Employees with salary not between 40000 and 60000
SELECT * FROM Employees
WHERE salary NOT BETWEEN 40000 AND 60000;

-- Employees with experience between 2 and 4 years
SELECT * FROM Employees
WHERE experience BETWEEN 2 AND 4;


/* =========================
   LIKE OPERATOR
   ========================= */

-- Employees whose names start with 'R'
SELECT * FROM Employees
WHERE emp_name LIKE 'R%';

-- Employees whose names end with 'a'
SELECT * FROM Employees
WHERE emp_name LIKE '%a';

-- Employees whose names contain 'v'
SELECT * FROM Employees
WHERE emp_name LIKE '%v%';

-- Employees whose city starts with 'B'
SELECT * FROM Employees
WHERE city LIKE 'B%';

-- Employees whose department ends with 's'
SELECT * FROM Employees
WHERE department LIKE '%s';
