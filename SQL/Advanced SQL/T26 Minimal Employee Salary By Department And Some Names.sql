/* Write a SQL query to display the minimal employee salary by 
department and job title along with the name of some of the
employees that take it. */
USE TelerikAcademy

SELECT d.Name AS [Department], e.JobTitle, MIN(e.Salary) 
	AS [Average Salary], MIN(e.FirstName + ' ' + e.LastName) 
FROM Employees e JOIN Departments d
	ON e.DepartmentID = d.DepartmentID
GROUP BY d.Name, e.JobTitle
ORDER BY d.Name, [Average Salary]