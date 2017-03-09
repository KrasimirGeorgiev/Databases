/* Write a SQL statement that changes the password to NULL for 
all users that have not been in the system since 10.03.2010. */

/* Password column was set to NOT NULL  */
ALTER TABLE Users
ALTER COLUMN [Password] NVARCHAR(128) NULL

UPDATE Users
SET Password = NULL
WHERE LastLogIn < '2010/03/10' OR LastLogIn IS NULL
