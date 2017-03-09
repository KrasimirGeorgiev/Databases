/* Write a SQL to create table WorkHours to store work reports for 
each employee (employee id, date, task, hours, comments).
	Don't forget to define identity, primary key and appropriate 
	foreign key.
	
	Issue few SQL statements to insert, update and delete of 
	some data in the table.
	
	Define a table WorkHoursLogs to track all changes in the 
	WorkHours table with triggers.
		For each change keep the old record data, the new 
		record data and the command (insert / update / delete). */
USE TelerikAcademy
GO

CREATE TABLE WorkHours(
	ReportId int IDENTITY,
	EmployeeId int NOT NULL,
	[Date] datetime NOT NULL,
	Task nvarchar(250),
	[Hours] int NOT NULL,
	Comments nvarchar(250),
	CONSTRAINT PK_WorkHours PRIMARY KEY(ReportId),
	CONSTRAINT FK_WorkHours_Employees FOREIGN KEY(EmployeeId)
	REFERENCES Employees(EmployeeId)
)
GO

CREATE TABLE WorkHoursLogs(
	LogId int IDENTITY,
	ReportId int NOT NULL,
	EmployeeId int NOT NULL,
	[Date] datetime NOT NULL,
	Task nvarchar(250),
	[Hours] int NOT NULL,
	Comments nvarchar(250),
	Command nvarchar(10),
	CONSTRAINT PK_WorkHoursLogs PRIMARY KEY(LogId)
)
GO

CREATE TRIGGER tr_LogWorkHoursChange ON WorkHours
FOR UPDATE, INSERT, DELETE
AS
	BEGIN
		DECLARE @DELETEDCOUNT INT,
			@INSERTEDCOUNT INT,
			@COMMAND nvarchar(10)
		SELECT @DELETEDCOUNT = COUNT(*) FROM deleted
		SELECT @INSERTEDCOUNT = COUNT(*) FROM inserted
		IF(@DELETEDCOUNT&@INSERTEDCOUNT > 0 )
			BEGIN
				SET @COMMAND = 'Update'
				INSERT INTO WorkHoursLogs(
					Comments, [Date], EmployeeId, [Hours],
					 ReportId, Task, Command)
				VALUES((SELECT Comments, [Date], EmployeeId, [Hours],
					  ReportId, Task FROM inserted), @COMMAND)
			END
		ELSE IF (@DELETEDCOUNT > 0 )
			BEGIN
				SET @COMMAND = 'Delete'	
				INSERT INTO WorkHoursLogs(
					Comments, [Date], EmployeeId, [Hours],
					 ReportId, Task, Command)
				VALUES((SELECT Comments, [Date], EmployeeId, [Hours],
					  ReportId, Task FROM deleted), @COMMAND)
			END
		ELSE IF (@INSERTEDCOUNT > 0 )
			BEGIN
			SET @COMMAND = 'Insert'
				INSERT INTO WorkHoursLogs(
					Comments, [Date], EmployeeId, [Hours],
					 ReportId, Task, Command)
				VALUES((SELECT Comments, [Date], EmployeeId, [Hours],
					  ReportId, Task FROM inserted), @COMMAND)		
			END	
	END
GO