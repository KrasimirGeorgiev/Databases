/* Write a SQL query to find all employees that do not have manager. */
USE TelerikAcademy

SELECT FirstName, LastName, Salary 
FROM dbo.Employees
WHERE ManagerID IS NULL
ORDER BY Salary