/* Write a SQL to find the full name of each employee. */
USE TelerikAcademy

SELECT FirstName + ' ' + LastName AS FullName
FROM dbo.Employees