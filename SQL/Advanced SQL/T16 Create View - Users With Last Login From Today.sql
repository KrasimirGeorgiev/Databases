/* Write a SQL statement to create a view that displays the users 
from the Users table that have been in the system today. 
	Test if the view works correctly. */

CREATE VIEW [Today Users] AS SELECT *
FROM Users
WHERE CONVERT(DATE, LastLogIn) = CONVERT(DATE, GETDATE())



	



