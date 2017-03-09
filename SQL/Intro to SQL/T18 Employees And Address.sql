/* Write a SQL query to find all employees along with their 
address. Use inner join with ON clause. */
USE TelerikAcademy

SELECT emp.FirstName, emp.LastName, 
	t.Name + ' ' + addr.AddressText AS 'Address'
FROM dbo.Employees emp
	JOIN Addresses addr
	ON emp.AddressID = addr.AddressID
	JOIN Towns t
	ON addr.TownID = t.TownID