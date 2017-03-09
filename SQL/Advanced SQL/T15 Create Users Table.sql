/* Write a SQL statement to create a table Users. Users should 
have username, password, full name and last login time. 

	Choose appropriate data types for the table fields. Define a 
	primary key column with a primary key constraint. 
	
	Define the primary key column as identity to facilitate inserting 
	records. 
	
	Define unique constraint to avoid repeating usernames.

	Define a check constraint to ensure the password is at least 5 
	characters long. */
USE TelerikAcademy

CREATE TABLE Users (
[UserId] int IDENTITY,
[Username] NVARCHAR(100) NOT NULL,
[Password] NVARCHAR(128) NOT NULL,
[FullName] NVARCHAR(200) NOT NULL,
[LastLogIn] DATETIME
CONSTRAINT PK_Users PRIMARY KEY([UserId]),
CONSTRAINT CK_Users_Password CHECK(LEN([Password]) > 4),
CONSTRAINT UK_Users_Username UNIQUE([Username])
)