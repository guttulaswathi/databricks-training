--SELECT
-- 1. Display all employee details
  select*from Employees;

--2.Display only employee names and salaries.
SELECT EmployeeName, Salary
FROM Employee;
  
--3.Display employee names and departments.
select emp_name,department from Employees;

--4.Display all employees from the IT department.
select * from Employees where department='IT';

--5.Display employee names and experience.
select emp_name,experience from Employees;

