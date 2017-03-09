/* Write a SQL query to find the number of employees in the "Sales" 
department. */
USE TelerikAcademy

SELECT COUNT(*) AS [Employees in Sales]
FROM Employees e, Departments d
WHERE e.DepartmentID = d.DepartmentID AND d.Name = 'Sales'



