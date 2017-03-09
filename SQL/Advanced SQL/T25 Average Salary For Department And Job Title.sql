/* Write a SQL query to display the average employee salary 
by department and job title. */
USE TelerikAcademy

SELECT d.Name AS [Department], e.JobTitle, AVG(e.Salary) 
	AS [Average Salary]
FROM Employees e JOIN Departments d
	ON e.DepartmentID = d.DepartmentID
GROUP BY d.Name, e.JobTitle
ORDER BY d.Name
