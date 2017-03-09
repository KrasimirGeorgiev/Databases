/* Write a SQL query to find the names of all employees whose 
salary is 25000, 14000, 12500 or 23600. */
USE TelerikAcademy

SELECT FirstName, LastName, Salary 
FROM dbo.Employees
WHERE Salary IN (12500, 14000, 23600, 25000)
ORDER BY Salary