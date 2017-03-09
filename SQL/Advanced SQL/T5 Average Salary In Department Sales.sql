/* Write a SQL query to find the average salary in the "Sales" department. */
USE TelerikAcademy

SELECT AVG(e.Salary) AS [Sales Department Average Salary]
FROM Employees e, Departments d
WHERE e.DepartmentID = d.DepartmentID AND d.Name = 'Sales'



