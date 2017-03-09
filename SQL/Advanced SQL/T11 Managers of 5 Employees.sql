/* Write a SQL query to find all managers that have exactly 5 employees. 
Display their first name and last name. */
USE TelerikAcademy

SELECT m.FirstName + ' ' + m.LastName AS [Managers Of 5 Employees]
FROM Employees m
WHERE 5 = (SELECT COUNT(*) FROM Employees e 
	WHERE e.ManagerID = m.EmployeeID)


	



