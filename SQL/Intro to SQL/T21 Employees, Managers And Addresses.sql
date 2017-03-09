/* Write a SQL query to find all employees, along with their 
manager and their address. Join the 3 tables: Employees e, 
Employees m and Addresses a. */
USE TelerikAcademy

SELECT e.FirstName + ' ' + e.LastName AS Employee, 
	m.FirstName + ' ' + m.LastName AS Manager,
	a.AddressText AS [Address]
FROM Employees e, Employees m, Addresses a
WHERE e.ManagerID = m.EmployeeID AND a.AddressID = e.AddressID