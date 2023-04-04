/* SQL Basics For Beginners */

/*
TOPICS COVERED
CREATE Statement
INSERT Statement
SELECT + FROM Statements
WHERE Statement
GROUP BY + ORDER BY Statements
*/

-- Create two tables, EmployeeDemographics and EmployeeSalary
CREATE TABLE EmployeeDemographics
(
EmployeeID int,
FirstName varchar(50),
LastName varchar(50),
Age int,
Gender varchar(50)
)

CREATE TABLE EmployeeSalary
(
EmployeeID int,
JobTitle varchar(50),
Salary int
)

-- Insert data into the tables
INSERT INTO EmployeeDemographics
VALUES
(1001, 'Jim', 'Elliot', 30, 'Male'),
(1002, 'Kimani', 'Eric', 35, 'Male'),
(1003, 'Silas', 'Mugambi', 25, 'Male'),
(1004, 'Stanly', 'Mwenda', 26, 'Male'),
(1005, 'Tes', 'Kimani', 24, 'Female'),
(1006, 'Douglas', 'Mochama', 23, 'Male'),
(1007, 'Brevian', 'Mokeira', 19, 'Female'),
(1008, 'Eddie', 'David', 24, 'Male'),
(1009, 'Elius', 'Gitiye', 25, 'Male'),
(1010, 'Jim', 'Murangiri', 27, 'Male'),
(1011, 'Pauline', 'Ntela', 22, 'Female'),
(1012, 'Tracy', 'Emelda', 24, 'Female'),
(1013, 'Jeremy', 'Gakula', 29, 'Male'),
(1014, 'Teresa', 'Ndune', 65, 'Female'),
(1015, 'Georgina', 'Kendi', 44, 'Female')

INSERT INTO EmployeeSalary
VALUES
(1001, 'Salesperson', 45000),
(1002, 'Receptionist', 37000),
(1003, 'Salesperson', 65000),
(1004, 'Accountant', 49500),
(1005, 'HR', 55000),
(1006, 'Salesperson', 51000),
(1007, 'Data Analyst', 85000),
(1008, 'Software Engineer', 95000),
(1009, 'Regional Manager', 125000),
(1010, 'Supplier Relations', 43200),
(1011, 'Salesperson', 71000),
(1012, 'Salesperson', 39100),
(1013, 'Accountant', 43500),
(1014, 'Chef', 30000),
(1015, 'Cleaner', 25000)

-- Select all columns from the EmployeeDemographics table
SELECT *
FROM EmployeeDemographics

-- Select only the FirstName and LastName columns from the EmployeeDemographics table
SELECT FirstName, LastName
FROM EmployeeDemographics

-- Select the first 5 rows from the EmployeeDemographics table
SELECT TOP 5 *
FROM EmployeeDemographics

-- Select distinct values from the Age column in the EmployeeDemographics table
SELECT DISTINCT Age
FROM EmployeeDemographics

-- Count the number of rows in the EmployeeDemographics table
SELECT COUNT(LastName)
FROM EmployeeDemographics

-- Count the number of rows in the EmployeeDemographics table and give the result a column alias
SELECT COUNT(*) AS 'Total Rows'
FROM EmployeeDemographics

-- Count the number of rows in the EmployeeDemographics table where the last name is not null and give the result a column alias
SELECT COUNT(LastName) AS 'LastName Count'
FROM EmployeeDemographics

-- Select all columns from the EmployeeSalary table
SELECT *
FROM EmployeeSalary

-- Select the maximum value of Salary from the EmployeeSalary table
SELECT MAX(Salary)
FROM EmployeeSalary

-- Select the minimum value of Salary from the EmployeeSalary table
SELECT MIN(Salary)
FROM EmployeeSalary

-- Select the average value of Salary from the EmployeeSalary table
SELECT AVG(Salary)
FROM EmployeeSalary

-- Select all columns from the EmployeeSalary table in the SQLTutorial database
SELECT *
FROM SQLTutorial.dbo.EmployeeSalary

/*
Where Statement
=, <>, <, >, And, Or, Like, Null, Not Null, In
*/

-- Select all columns from the EmployeeDemographics table where the first name is 'Jim'
SELECT *
FROM EmployeeDemographics
WHERE FirstName = 'Jim'

-- Select all columns from the EmployeeDemographics table where the first name is not 'Jim'
SELECT *
FROM EmployeeDemographics
WHERE FirstName != 'Jim'

-- Select all columns from the EmployeeDemographics table where the first name is not equal to 'Jim'
SELECT *
FROM EmployeeDemographics
WHERE FirstName <> 'Jim'

-- Select all columns from the EmployeeDemographics table where the age is greater than 27
SELECT *
FROM EmployeeDemographics
WHERE Age > 27

-- Select all columns from the EmployeeDemographics table where the age is greater than or equal to 27
SELECT *
FROM EmployeeDemographics
WHERE Age >= 27

-- Select all columns from the EmployeeDemographics table where the age is less than 29
SELECT *
FROM EmployeeDemographics
WHERE Age < 29

-- Select all columns from the EmployeeDemographics table where the age is less than or equal to 29
SELECT *
FROM EmployeeDemographics
WHERE Age <= 29

-- Select all columns from the EmployeeDemographics table where the age is less than or equal to 29 and the gender is male
SELECT *
FROM EmployeeDemographics
WHERE Age <= 29 AND Gender = 'Male'

-- Select all columns from the EmployeeDemographics table where the age is less than or equal to 29 or the gender is male
SELECT *
FROM EmployeeDemographics
WHERE Age <= 29 OR Gender = 'Male'

-- Select all columns from the EmployeeDemographics table where the last name starts with 'N'
SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 'N%' -- LIKE is used to filter. In this case, you'll pull all the names starting with N. % sign follows the letter and is called wildcard

-- Select all columns from the EmployeeDemographics table where the last name contains the letter 'N'
SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE '%N%' -- a letter between % sign implies the letter can be anywhere within the name

-- Select all columns from the EmployeeDemographics table where the last name starts with 'N' and has 'U' somewhere in it
SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 'N%U%' -- this specifies a name starting with N and has U somewhere in it

/*
Basically, LIKE is used to run wildcard
*/

-- Select all columns from the EmployeeDemographics table where the first name is null
SELECT *
FROM EmployeeDemographics
WHERE FirstName IS NULL

-- Select all columns from the EmployeeDemographics table where the first name is not null
SELECT *
FROM EmployeeDemographics
WHERE FirstName IS NOT NULL

/*
NULL is used to look wheather column is null or not.
In the case above, it checks the column names FirstName
*/

SELECT *
FROM EmployeeDemographics
WHERE FirstName = 'Jim' AND FirstName = 'Silas'

SELECT *
FROM EmployeeDemographics
WHERE FirstName = 'Jim' OR FirstName = 'Silas'

/* ALTERNATIVELY */
SELECT *
FROM EmployeeDemographics
WHERE FirstName IN ('Jim', 'Silas', 'Tracy')

	/* Explanation:
	This part is performing a basic SELECT operation with a WHERE clause to filter the results. It checks whether the FirstName column in the EmployeeDemographics table matches a certain value. The first query is checking if both 'Jim' and 'Silas' exist in the FirstName column. The second query is checking if either 'Jim' or 'Silas' exist in the FirstName column. The third query is an alternative way to perform the same operation using the IN operator. */


/*
Part 4:
Group By, Order By

GROUP BY is similar to the DISTINCT Statement
*/

SELECT *
FROM EmployeeDemographics

SELECT DISTINCT(Gender)
FROM EmployeeDemographics /* this will return the very first unique value of female, and the first unique value of male */

SELECT Gender
FROM EmployeeDemographics
GROUP BY Gender/* this will return two values. That of female and male. However, all the females will be rolled up into the female raw and the same for the male */

	/* MORE DETAILED ALTERNATIVE */

	SELECT Gender, COUNT(Gender)
	FROM EmployeeDemographics
	GROUP BY Gender/* this will return two values. That of female and male. However, all the females will be rolled up into the female raw and the same for the male */

/* THIS EXAMPLE SHOW A TABLE with Head Count based on Gender and Age */
SELECT *
FROM EmployeeDemographics

SELECT Gender, Age, COUNT(Gender) AS 'Head Count'
FROM EmployeeDemographics
GROUP BY Gender, Age /* COUNT(Gender) column is not included here since it is a derived column. it is not an actual column */

SELECT Gender, COUNT(Gender) AS 'Head Count'
FROM EmployeeDemographics
WHERE Age > 30
GROUP BY Gender

SELECT Gender, COUNT(Gender) AS 'Head Count'
FROM EmployeeDemographics
WHERE Age > 30
GROUP BY Gender
ORDER BY [Head Count]

SELECT Gender, COUNT(Gender) AS 'Head Count'
FROM EmployeeDemographics
WHERE Age > 30
GROUP BY Gender
ORDER BY [Head Count] ASC /* Orders from smallest */

SELECT Gender, COUNT(Gender) AS 'Head Count'
FROM EmployeeDemographics
WHERE Age > 30
GROUP BY Gender
ORDER BY [Head Count] DESC /* Orders from biggest */

	/*Explanation:
	This part of the SQL code is focusing on GROUP BY and ORDER BY clauses, which allow for data aggregation and sorting. The first query is just selecting all data from the EmployeeDemographics table. The second query is using the DISTINCT keyword to get the unique values of Gender in the EmployeeDemographics table. The third query is grouping the data by Gender and returning the count of each gender. The fourth query is a more detailed version of the third query, including the count of each gender. The fifth query is selecting all data from the EmployeeDemographics table. The sixth query is grouping the data by Gender and Age, returning the count of each combination of gender and age. The seventh query is filtering the data to only include records where Age is greater than 30, then grouping the data by Gender and returning the count of each gender.*/


SELECT *
FROM EmployeeDemographics
ORDER BY Age

SELECT *
FROM EmployeeDemographics
ORDER BY Age DESC

SELECT *
FROM EmployeeDemographics
ORDER BY Age, Gender /* this orders by age, then under age, it orders by gender */

SELECT *
FROM EmployeeDemographics
ORDER BY Age DESC, Gender ASC /* this orders by age, then under age, it orders by gender */

	/* you can also use number instead of column name. e.g. age is the 4th column in the table. therefore, I can use 4 to spacify the column */
	SELECT *
	FROM EmployeeDemographics
	ORDER BY 4 DESC, 5 ASC /* this orders by age, then under age, it orders by gender */
