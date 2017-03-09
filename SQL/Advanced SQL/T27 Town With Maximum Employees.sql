/* Write a SQL query to display the town where maximal number 
of employees work. */
USE TelerikAcademy

SELECT TOP 1 t.Name AS [Town], Count(e.EmployeeID) AS [Count]
FROM Towns t 
JOIN Addresses a ON a.TownID = t.TownID
JOIN Employees e ON e.AddressID = a.AddressID
GROUP BY t.Name
ORDER BY [Count] DESC 

