/* Write a SQL query to display the number of managers from 
each town. */
USE TelerikAcademy

SELECT t.Name AS [Town], Count(DISTINCT e.ManagerID) AS [Managers Count]
FROM Towns t
JOIN Addresses a ON a.TownID = t.TownID
JOIN Employees e ON e.AddressID = a.AddressID
GROUP BY t.Name
ORDER BY [Managers Count] DESC 
