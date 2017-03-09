/* Write a SQL query to find the names of all employees whose last 
name contains "ei". */
USE TelerikAcademy

SELECT * 
FROM dbo.Employees
WHERE LastName LIKE '%ei%'