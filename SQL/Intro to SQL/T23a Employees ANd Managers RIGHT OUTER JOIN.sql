/* Write a SQL query to find all the employees and the manager 
for each of them along with the employees that do not have manager. 
Use right outer join. Rewrite the query to use left outer join. */
USE TelerikAcademy

SELECT e.FirstName, e.LastName, 
	m.FirstName + ' ' + m.LastName AS Manager
FROM Employees m
	RIGHT OUTER JOIN Employees e
	ON e.ManagerID = m.EmployeeID