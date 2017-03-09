/* Write a SQL query to find the count of all employees in each 
department and for each town. */
USE TelerikAcademy

SELECT d.Name AS [Department], t.Name AS [Town], 
	COUNT(*) AS [Count Of Employees]
FROM Employees e JOIN Departments d
	ON e.DepartmentID = d.DepartmentID
	JOIN Addresses a ON e.AddressID = a.AddressID
	JOIN Towns t ON t.TownID = a.TownID
GROUP BY d.Name, t.Name
ORDER BY [Department] 
	



