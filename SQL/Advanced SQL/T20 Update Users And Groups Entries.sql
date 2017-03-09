/* Write SQL statements to update some of the records in the Users
and Groups tables. */

UPDATE [Groups]
SET Name = 'Drugite'
WHERE GroupId = 2;
GO

UPDATE [Users]
SET GroupId = 1,
	LastLogIn = GETDATE()
WHERE FullName LIKE('%sho%') OR FullName LIKE('Kubrat%')
GO
