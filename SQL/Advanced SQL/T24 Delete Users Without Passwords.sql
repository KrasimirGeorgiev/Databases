/* Write a SQL statement that deletes all users without passwords 
(NULL password). */

DELETE FROM Users
WHERE [Password] IS NULL
