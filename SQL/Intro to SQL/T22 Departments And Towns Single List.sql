/* Write a SQL query to find all departments and all town 
names as a single list. Use UNION. */
USE TelerikAcademy

SELECT d.Name AS [Towns And Departments]
FROM Departments d
UNION
SELECT t.Name
FROM Towns t