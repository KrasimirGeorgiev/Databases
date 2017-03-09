/* Write a SQL query to find all employees along with their managers. 
For employees that do not have manager display the value "(no manager)". */
USE TelerikAcademy

SELECT e.FirstName + ' ' + e.LastName AS [Employee],
ISNULL(m.FirstName + ' ' + m.LastName, 'No Manager') AS [Manager]
FROM Employees e LEFT OUTER JOIN Employees m
ON e.ManagerID = m.EmployeeID


	



