/* Write a SQL statement to create a table Groups. Groups should have 
unique name (use unique constraint).
	Define primary key and identity column. */

CREATE TABLE [Groups](
[GroupId] int IDENTITY,
[Name] NVARCHAR(120) NOT NULL,
CONSTRAINT PK_Groups_GroupId PRIMARY KEY([GroupId]),
CONSTRAINT UK_Groups_Name UNIQUE(Name)
)


