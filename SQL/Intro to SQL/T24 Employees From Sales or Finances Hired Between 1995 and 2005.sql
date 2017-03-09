/* Write a SQL query to find the names of all employees from 
the departments "Sales" and "Finance" whose hire year is 
between 1995 and 2005. */
USE TelerikAcademy

SELECT e.FirstName + ' ' + e.LastName AS Name,
	d.Name AS Department, e.HireDate AS [Hired On]
FROM Employees e, Departments d
WHERE e.DepartmentID = d.DepartmentID 
AND d.Name IN ('Finance', 'Sales')
AND (e.HireDate BETWEEN '1995/1/1' AND '2005/12/31')
ORDER BY [Hired On] 
	