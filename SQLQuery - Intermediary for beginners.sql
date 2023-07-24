
	------PART 1: INNER/OUTER JOINS | USE CASE

---- Select all columns from the EmployeeDemographics table
--SELECT *
--FROM EmployeeDemographics;

---- Select all columns from the EmployeeSalary table
--SELECT *
--FROM EmployeeSalary;

---- Insert a new record into the EmployeeDemographics table
--INSERT INTO EmployeeDemographics
--VALUES
--(
--1016, 'Emmy', 'Syphanny', 26, 'Female'
--);

---- Join EmployeeDemographics and EmployeeSalary tables on EmployeeID column
--SELECT *
--FROM EmployeeDemographics
--INNER JOIN EmployeeSalary
--ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;

---- Perform a full outer join on EmployeeDemographics and EmployeeSalary tables on EmployeeID column
--SELECT *
--FROM EmployeeDemographics
--FULL OUTER JOIN EmployeeSalary
--ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;

---- Perform a left outer join on EmployeeDemographics and EmployeeSalary tables on EmployeeID column
--SELECT *
--FROM EmployeeDemographics
--LEFT OUTER JOIN EmployeeSalary
--ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;

---- Perform a right outer join on EmployeeDemographics and EmployeeSalary tables on EmployeeID column
--SELECT *
--FROM EmployeeDemographics
--RIGHT OUTER JOIN EmployeeSalary
--ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;

---- Select specific columns from EmployeeDemographics and EmployeeSalary tables and join them on EmployeeID column
--SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, gender, age, Salary
--FROM EmployeeDemographics
--INNER JOIN EmployeeSalary
--ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;

---- Select specific columns from EmployeeDemographics and EmployeeSalary tables and perform a full outer join on EmployeeID column
--SELECT EmployeeDemographics.EmployeeID, Gender, FirstName, LastName, JobTitle, Age, Salary
--FROM EmployeeDemographics
--FULL OUTER JOIN EmployeeSalary
--ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;

---- Perform a full outer join on EmployeeDemographics and EmployeeSalary tables on EmployeeID column, and select all columns
--SELECT *
--FROM EmployeeDemographics
--FULL OUTER JOIN EmployeeSalary
--ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;

---- Select specific columns from EmployeeDemographics and EmployeeSalary tables and perform a full outer join on EmployeeID column, and rename columns
--SELECT EmployeeDemographics.EmployeeID AS 'Employee ID', CONCAT(FirstName, ' ', LastName) AS 'Full Name', JobTitle AS 'Job Title', Gender, Age, Salary
--FROM EmployeeDemographics
--FULL OUTER JOIN EmployeeSalary
--ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;

---- Select specific columns from EmployeeDemographics and EmployeeSalary tables and perform a full outer join on EmployeeID column, where FirstName is not 'Silas', and order by Salary in descending order
--SELECT EmployeeDemographics.EmployeeID, CONCAT(FirstName, ' ', LastName) AS 'Full Name', JobTitle, Gender, Age, Salary
--FROM EmployeeDemographics
--FULL OUTER JOIN EmployeeSalary
--ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--WHERE FirstName <> 'Silas'
--ORDER BY Salary DESC;

---- Select specific columns from EmployeeDemographics and EmployeeSalary tables and perform a full outer join on EmployeeID column, where JobTitle begins with 'Sale', and order by Salary in descending order
--SELECT EmployeeDemographics.EmployeeID, CONCAT(FirstName, ' ', LastName) AS 'Full Name', JobTitle, Gender, Age, Salary
--FROM EmployeeDemographics
--FULL OUTER JOIN EmployeeSalary
--ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--WHERE JobTitle LIKE 'Sale%'
--ORDER BY Salary DESC;

---- This query retrieves the Employee ID, Full Name, Job Title, Gender, Age, and Salary of employees with a job title that starts with 'Sale', ordered by their salary in descending order.

--SELECT EmployeeDemographics.EmployeeID, CONCAT(FirstName, ' ', LastName) AS 'Full Name', JobTitle, Gender, Age, Salary
--FROM EmployeeDemographics
--FULL OUTER JOIN EmployeeSalary
--ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--WHERE JobTitle LIKE 'Sale%'
--ORDER BY Salary DESC

---- This query retrieves the Employee ID, Full Name, Job Title, Gender, Age, and Salary of employees with a job title of 'Salesperson', ordered by their salary in descending order.

--SELECT EmployeeDemographics.EmployeeID, CONCAT(FirstName, ' ', LastName) AS 'Full Name', JobTitle, Gender, Age, Salary
--FROM EmployeeDemographics
--FULL OUTER JOIN EmployeeSalary
--ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--WHERE JobTitle = 'Salesperson'
--ORDER BY Salary DESC

---- This query updates the Job Title of employees who have a job title of 'Salesperson' to 'Sales Associate'.

--UPDATE EmployeeSalary
--SET JobTitle = 'Sales Associate'
--WHERE JobTitle = 'Salesperson';

---- This query retrieves the Employee ID, Full Name, Job Title, Gender, Age, and Salary of employees with a job title of 'Sales Associate', ordered by their salary in descending order.

--SELECT EmployeeDemographics.EmployeeID, CONCAT(FirstName, ' ', LastName) AS 'Full Name', JobTitle, Gender, Age, Salary
--FROM EmployeeDemographics
--FULL OUTER JOIN EmployeeSalary
--ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--WHERE JobTitle = 'Sales Associate'
--ORDER BY Salary DESC

---- This query updates the Job Title and Salary of an employee with an Employee ID of '1003' to 'CEO' and a Salary of '240000'.

--UPDATE EmployeeSalary
--SET JobTitle = 'CEO', Salary = 240000
--WHERE EmployeeID = '1003';

---- This query retrieves all columns from both tables, EmployeeDemographics and EmployeeSalary, where their Employee ID matches.

--SELECT *
--FROM EmployeeDemographics
--INNER JOIN EmployeeSalary
--ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

---- This query retrieves the Full Name, Job Title, and Salary of employees, ordered by their salary in descending order.

--SELECT CONCAT(FirstName, ' ', LastName) AS 'Full Name', JobTitle, Salary
--FROM EmployeeDemographics
--INNER JOIN EmployeeSalary
--ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--ORDER BY Salary DESC

---- This query retrieves the Job Title and average Salary of employees, grouped by their Job Title and ordered by the average salary in descending order.

--SELECT JobTitle, AVG(Salary) AS AverageSalary
--FROM EmployeeDemographics
--INNER JOIN EmployeeSalary
--ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--GROUP BY JobTitle
--ORDER BY AverageSalary DESC

---- This query retrieves the Job Title and total Salary of employees, grouped by their Job Title and ordered by the total salary in descending order.

--SELECT JobTitle, SUM(Salary) AS TotalSalary
--FROM EmployeeDemographics
--INNER JOIN EmployeeSalary
--ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--GROUP BY JobTitle
--ORDER BY TotalSalary DESC

---- This query retrieves the Job Title and average Salary of employees with a Job Title of 'Sales Associate', grouped by their Job Title.

--SELECT JobTitle, AVG(Salary) AS AverageSalary
--FROM EmployeeDemographics
--INNER JOIN EmployeeSalary
--ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--WHERE JobTitle = 'Sales Associate'
--GROUP BY JobTitle



--	----PART 2: Unions | Union Operator

----Unions and Joins are two different operations in SQL that serve different purposes.
----A JOIN operation combines rows from two or more tables based on a related column between them. For example, if you have a table of employees and a table of departments, you can join them together on the department ID to get a table of employees and their corresponding departments. There are different types of JOIN operations, such as INNER JOIN, LEFT JOIN, RIGHT JOIN, and FULL OUTER JOIN, each with its own specific behavior and use case.
----On the other hand, a UNION operation combines the results of two or more SELECT statements into a single result set. The SELECT statements must have the same number of columns and compatible data types. For example, if you have two tables with similar data and you want to combine them into a single table, you can use a UNION operation.
----In summary, JOINs are used to combine data from different tables based on a related column, while UNIONs are used to combine the results of two or more SELECT statements into a single result set. Both operations can be useful in different situations, depending on the specific requirements of the task at hand.


----This SQL statement selects all columns from the EmployeeDemographics table
--SELECT *
--FROM EmployeeDemographics;

----This SQL statement performs a full outer join between the EmployeeDemographics and EmployeeSalary tables on the EmployeeID column.
--SELECT *
--FROM EmployeeDemographics
--FULL OUTER JOIN EmployeeSalary
--ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;

----This SQL statement creates a new table named EmployeeWareHouseDemographics with five columns: EmployeeID (integer), FirstName (varchar), LastName (varchar), Age (integer), and Gender (varchar).

--CREATE TABLE EmployeeWareHouseDemographics
--(
--EmployeeID int,
--FirstName varchar(50),
--LastName varchar(50),
--Age int,
--Gender varchar(50)
--);

----This SQL statement inserts 25 rows of data into the EmployeeWareHouseDemographics table with the specified column values.

--INSERT INTO EmployeeWareHouseDemographics (EmployeeID, FirstName, LastName, Age, Gender)
--VALUES
--(1101, 'John', 'Doe', 25, 'Male'),
--(1102, 'Jane', 'Doe', 30, 'Female'),
--(1103, 'Bob', 'Smith', 40, 'Male'),
--(1104, 'Sara', 'Johnson', 27, 'Female'),
--(1105, 'Mike', 'Lee', 32, 'Male'),
--(1106, 'Jenny', 'Brown', 28, 'Female'),
--(1107, 'David', 'Davis', 35, 'Male'),
--(1108, 'Emily', 'Wilson', 33, 'Female'),
--(1109, 'Tom', 'Jones', 45, 'Male'),
--(1110, 'Amy', 'Garcia', 26, 'Female'),
--(1111, 'Sam', 'Kim', 29, 'Male'),
--(1112, 'Lucy', 'Chen', 31, 'Female'),
--(1113, 'Adam', 'Lopez', 37, 'Male'),
--(1114, 'Maria', 'Martinez', 36, 'Female'),
--(1115, 'William', 'Wang', 39, 'Male'),
--(1116, 'Grace', 'Li', 24, 'Female'),
--(1117, 'Jason', 'Nguyen', 42, 'Male'),
--(1118, 'Maggie', 'Jackson', 34, 'Female'),
--(1119, 'Peter', 'Brown', 43, 'Male'),
--(1120, 'Jessica', 'Taylor', 38, 'Female'),
--(1121, 'Alex', 'Harris', 27, 'Male'),
--(1122, 'Lauren', 'Clark', 32, 'Female'),
--(1123, 'Kevin', 'Walker', 28, 'Male'),
--(1124, 'Olivia', 'Gonzalez', 30, 'Female'),
--(1125, 'George', 'Allen', 29, 'Male');

----This SQL statement selects all columns from the EmployeeDemographics table.

--SELECT *
--FROM EmployeeDemographics;

----This SQL statement selects all columns from the EmployeeWareHouseDemographics table.

--SELECT *
--FROM EmployeeWareHouseDemographics;

----This SQL statement uses the UNION ALL operator to combine the results of two SELECT statements into a single result set that includes all rows where the FirstName is "John" from both tables.

--SELECT *
--FROM EmployeeDemographics
--WHERE FirstName = 'John'
--UNION ALL
--SELECT *
--FROM EmployeeWareHouseDemographics
--WHERE FirstName = 'John';

----This SQL statement uses the UNION operator to combine the results of two SELECT statements into a single result set

--SELECT *
--FROM EmployeeDemographics
--UNION
--SELECT *
--FROM EmployeeWareHouseDemographics

----This SQL query returns a result set that contains all rows from the EmployeeDemographics table and all rows from the EmployeeWareHouseDemographics table, including any duplicate rows. The SELECT * statement retrieves all columns from both tables. The UNION ALL operator combines the results of the two SELECT statements into a single result set. The ORDER BY clause sorts the result set by the EmployeeID column in ascending order.

--SELECT *
--FROM EmployeeDemographics
--UNION ALL
--SELECT *
--FROM EmployeeWareHouseDemographics
--ORDER BY EmployeeID

----This SQL query returns a result set that combines columns from the EmployeeDemographics table and the EmployeeSalary table, with any duplicate rows removed. The SELECT statement retrieves columns from both tables that have matching data types. The UNION operator combines the results of the two SELECT statements into a single result set. The ORDER BY clause sorts the result set by the EmployeeID column in ascending order.

--SELECT EmployeeID, FirstName, Age
--FROM EmployeeDemographics
--UNION
--SELECT EmployeeID, JobTitle, Salary
--FROM EmployeeSalary
--ORDER BY EmployeeID



	----PART 3: Case Statement | Use Case

--The CASE statement in SQL is a conditional expression used to evaluate conditions and return values based on the outcome of those conditions.
--It can be used in SELECT, WHERE, and ORDER BY clauses, allowing for conditional logic within a query.
--The syntax of the CASE statement involves specifying one or more conditions and the corresponding value or expression to be returned if that condition is true.
--The ELSE clause can be used to provide a default value if none of the specified conditions are met.
--Using the CASE statement can make complex queries easier to read and understand by defining conditional logic within a single statement.

SELECT EmployeeDemographics.EmployeeID, Gender, CONCAT(FirstName, ' ', LastName) AS FullName, JobTitle, Age, Salary
FROM EmployeeDemographics
FULL OUTER JOin EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

