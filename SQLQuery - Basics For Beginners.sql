/* SQL Basics For Beginners */

 /*
 TOPICS COVERED
	CREATE Statement
	INSERT Statement
	SELECT + FROM Statements
	WHERE Statement
	GROUP BY + ORDER BY Statements
 */

CREATE TABLE EmployeeDemographics
(EmployeeID int,
FirstName varchar(50),
LastName varchar(50),
Age int,
Gender varchar(50)
)

CREATE TABLE EmployeeSalary
(EmployeeID int,
JobTitle varchar(50),
Salary int)

INSERT INTO EmployeeDemographics VALUES
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

INSERT INTO EmployeeSalary VALUES
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

SELECT *
FROM EmployeeDemographics

SELECT FirstName, LastName
FROM EmployeeDemographics

SELECT TOP 5 *
FROM EmployeeDemographics

SELECT DISTINCT (age)
FROM EmployeeDemographics

SELECT COUNT(LastName)
FROM EmployeeDemographics

SELECT COUNT(LastName) AS LastNameCount
FROM EmployeeDemographics

SELECT COUNT(LastName) AS 'Last Name Count'
FROM EmployeeDemographics

SELECT *
FROM EmployeeSalary

SELECT MAX(Salary)
FROM EmployeeSalary

SELECT MIN(Salary)
FROM EmployeeSalary

SELECT AVG(Salary)
FROM EmployeeSalary

SELECT *
FROM SQLTutorial.dbo.EmployeeSalary


 /*
 Where Statement
 =, <>, <, >, And, Or, Like, Null, Not Null, In
 */

SELECT *
FROM EmployeeDemographics
WHERE FirstName = 'Jim'

SELECT *
FROM EmployeeDemographics
WHERE FirstName != 'Jim'

SELECT *
FROM EmployeeDemographics
WHERE FirstName <> 'Jim'

SELECT *
FROM EmployeeDemographics
WHERE Age > 27

SELECT *
FROM EmployeeDemographics
WHERE Age >= 27

SELECT *
FROM EmployeeDemographics
WHERE Age < 29

SELECT *
FROM EmployeeDemographics
WHERE Age <= 29

SELECT *
FROM EmployeeDemographics
WHERE Age <= 29 AND Gender = 'Male'

SELECT *
FROM EmployeeDemographics
WHERE Age <= 29 OR Gender = 'Male'

SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 'N%' /* LIKE is used to filter. In this case, you'll pull all the names starting with N. % sign follows the letter and is called wildcard */


SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE '%N%' /* a letter between % sign implies the letter can be anywhere within the name */

SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 'N%U%' /* this specifies a name starting with N and has U somewhere in it */

/*
 Basically, LIKE is used to run wildcard
 */

SELECT *
FROM EmployeeDemographics
WHERE FirstName is NULL

SELECT *
FROM EmployeeDemographics
WHERE FirstName is NOT NULL

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

 /*
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
