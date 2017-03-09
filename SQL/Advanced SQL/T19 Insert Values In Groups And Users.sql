/* Write SQL statements to insert several records in the Users and 
Groups tables. */

INSERT INTO [Groups](Name)
VALUES
	('Super Group'),
	('The Others')
GO

INSERT INTO [Users](Username, [Password], FullName, LastLogIn, GroupId)
VALUES
	('Pesho', 'pesho', 'Pesho Telerik', GETDATE(), 1),
	('Sasho', 'alex1', 'Sasho Alex', NULL, 2),
	('Sancho', 'hasancho', 'Da Bes', GETDATE(), 2),
	('Batman', 'azsam', 'Ot Yambol', '1999/12/31', 1),
	('KubratP', 'kobrata', 'Kubrat Pulev', NULL, 2)
GO
