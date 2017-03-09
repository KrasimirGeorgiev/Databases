/* Write a SQL query to find the names of all employees whose 
first name starts with "SA". */
USE TelerikAcademy

SELECT * 
FROM dbo.Employees
WHERE FirstName LIKE 'Sa%'