# Structured Query Language (SQL)

* ### What is SQL? What is DML? What is DDL? Recite the most important SQL commands.

    * ##### DML - Data Manipulation Language
        * Definition - A family of computer languages including commands permitting users to manipulate data in a database. This manipulation involves inserting data into database tables, retrieving existing data, deleting data from existing tables and modifying existing data. DML is mostly incorporated in SQL databases.
        
        * Commands: 
            * SELECT: This command is used to retrieve rows from a table. The syntax is SELECT \[column name(s)\] from \[table name\] where \[conditions\]. SELECT is the most widely used DML command in SQL.
            
            * UPDATE: This command modifies data of one or more records. An update command syntax is UPDATE \[table name\] SET \[column name = value\] where \[condition\].
            
            * INSERT: This command adds one or more records to a database table. The insert command syntax is INSERT INTO \[table name\] \[column(s)\] VALUES \[value(s)\].
            
            * DELETE: This command removes one or more records from a table according to specified conditions. Delete command syntax is DELETE FROM \[table name\] where \[condition\].

    * ##### DDL - Data Definition Language
        * Definition - A computer language used to create and modify the structure of database objects in a database. These database objects include views, schemas, tables, indexes, etc. 
        
        * Commands: 
        
            * CREATE: This command builds a new table and has a predefined syntax. The CREATE statement syntax is CREATE TABLE \[table name\] (\[column definitions\]) \[table parameters\]. CREATE TABLE Employee (Employee Id INTEGER PRIMARY KEY, First name CHAR (50) NULL, Last name CHAR (75) NOT NULL).
            * ALTER: An alter command modifies an existing database table. This command can add up additional column, drop existing columns and even change the data type of columns involved in a database table. An alter command syntax is ALTER object type object name parameters. ALTER TABLE Employee ADD DOB Date.
            * DROP: A drop command deletes a table, index or view. Drop statement syntax is DROP object type object name. DROP TABLE Employee.

* ### What is Transact-SQL (T-SQL)?
    > T-SQL (Transact SQL) is an extension to SQL that supports Constructions used in the high-level procedural programming languages like **if** statements, loops, exceptions. The stadnadrd language in MS SQL Server. It is commonly used to write stored procedures, triggers etc.
    