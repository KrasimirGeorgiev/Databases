/* Write a SQL query to find all departments and the average salary 
for each of them. */
USE TelerikAcademy

SELECT d.Name AS [Department], AVG(Salary) AS [Average Salary]
FROM Employees e
JOIN Departments d ON d.DepartmentID = e.DepartmentID
GROUP BY d.Name
ORDER BY [Average Salary] DESC


