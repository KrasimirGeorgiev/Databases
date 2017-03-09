/* Write SQL statements to delete some of the records from the Users 
and Groups tables. */

DELETE FROM Users WHERE GroupId = 2
GO

DELETE FROM Groups WHERE GroupId = 2
GO
