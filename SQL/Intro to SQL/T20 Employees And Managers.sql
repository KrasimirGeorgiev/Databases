/* Write a SQL query to find all employees along with their manager. */
USE TelerikAcademy

SELECT emp.FirstName + ' ' + emp.LastName AS Employee, 
	man.FirstName + ' ' + man.LastName AS Manager
FROM Employees emp, Employees man
WHERE emp.ManagerID = man.EmployeeID