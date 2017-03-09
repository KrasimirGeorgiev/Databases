/* Write a SQL query to find all employees and their address. 
Use equijoins (conditions in the WHERE clause). */
USE TelerikAcademy

SELECT emp.FirstName, emp.LastName, 
	t.Name + ' ' + addr.AddressText AS 'Address'
FROM dbo.Employees emp, dbo.Addresses addr, dbo.Towns t
WHERE emp.AddressID = addr.AddressID AND t.TownID = addr.TownID