# SQL Introduction Project Learning Guide

In this project, students will not only learn the basics of SQL and MySQL but also gain hands-on experience by working on a series of tasks that involve creating databases, tables, performing CRUD (Create, Read, Update, Delete) operations, and executing various SQL queries. The project is designed to help them understand the fundamentals of working with databases and SQL, as well as encourage self-learning and problem-solving skills.

## Learning Objectives

At the end of this project, students are expected to achieve the following learning objectives:

1. **Understand the concept of databases and relational databases**: Learn what a database is, the difference between a database and a relational database, and how they are used to store and manage data efficiently.

2. **Comprehend SQL and MySQL**: Understand what SQL stands for (Structured Query Language) and what MySQL is (an open-source relational database management system). Gain knowledge of MySQL's features and advantages.

3. **Database Creation**: Learn how to create a new database in MySQL using Data Definition Language (DDL) statements. Understand the importance of organizing data into separate databases.

4. **Perform CRUD Operations**: Become proficient in executing basic CRUD operations (SELECT, INSERT, UPDATE, DELETE) on a table using Data Manipulation Language (DML) statements. Learn how to retrieve, add, modify, and delete data.

5. **Subqueries and MySQL Functions**: Master the use of subqueries and MySQL functions to retrieve and manipulate data effectively. Understand how to use these features to perform complex queries.

6. **Understanding Backticks and Apostrophes**: Learn about the difference between backticks and apostrophes in MySQL. Gain insights into when to use each of them appropriately.

7. **Using Resources Effectively**: Acquire the skills to utilize MySQL cheat sheets, documentation, and online resources to support SQL query development and problem-solving.

## Resources

Provide the students with the following resources to help them complete the project and continue their learning journey:

1. **Video Introduction**: A brief video explaining databases and SQL.
   - [What is Database & SQL?](https://www.youtube.com/watch?v=_W9y6GLdKd8)

2. **MySQL Tutorial**: A basic tutorial on MySQL for beginners.
   - [A Basic MySQL Tutorial](https://www.digitalocean.com/community/tutorials/a-basic-mysql-tutorial)

3. **SQL Statements Overview**: Overview of Data Definition Language (DDL) and Data Manipulation Language (DML) statements.
   - [Basic SQL statements: DDL and DML](https://en.wikipedia.org/wiki/Data_definition_language)

4. **Introduction to SQL Queries**: Introduction to basic SQL queries and Relational Algebra.
   - [Basic queries: SQL and RA](https://en.wikipedia.org/wiki/Relational_algebra)

5. **MySQL Functions Documentation**: Comprehensive documentation on MySQL functions.
   - [SQL technique: functions](https://dev.mysql.com/doc/refman/8.0/en/sql-function-reference.html)

6. **SQL Subqueries Explanation**: Explanation of subqueries in SQL.
   - [SQL technique: subqueries](https://www.w3schools.com/sql/sql_subqueries.asp)

7. **Backticks vs. Apostrophes**: Understanding the difference between backticks and apostrophes in MySQL.
   - [What makes the big difference between a backtick and an apostrophe?](https://stackoverflow.com/questions/29402331/what-is-the-difference-between-backticks-and-quotes-in-mysql)

8. **MySQL Cheat Sheet**: A handy cheat sheet for MySQL commands and syntax.
   - [MySQL Cheat Sheet](https://devhints.io/mysql)

9. **MySQL Documentation**: MySQL 8.0 SQL statement syntax documentation.
   - [MySQL 8.0 SQL Statement Syntax](https://dev.mysql.com/doc/refman/8.0/en/sql-statements.html)

10. **MySQL Installation Guide**: Step-by-step guide on installing MySQL in Ubuntu 20.04.
    - [Installing MySQL in Ubuntu 20.04](https://linuxconfig.org/how-to-install-mysql-on-ubuntu-20-04-lts-linux)

## Project Tasks

Below are the tasks that the students need to complete for this project:

### Task 0: List Databases
Write a script that lists all databases of your MySQL server.

**Instructions:** Create a file named `0-list_databases.sql`. In this file, write an SQL query to list all databases. Don't forget to add comments to explain your query. Execute the script using the following command:

```bash
cat 0-list_databases.sql | mysql -hlocalhost -uroot -p
```

### Task 1: Create a Database
Write a script that creates the database `hbtn_0c_0` in your MySQL server.

**Instructions:** Create a file named `1-create_database_if_missing.sql`. In this file, write an SQL query to create the database `hbtn_0c_0` if it doesn't exist. Execute the script using the following command:

```bash
cat 1-create_database_if_missing.sql | mysql -hlocalhost -uroot -p
```

### Task 2: Delete a Database
Write a script that deletes the database `hbtn_0c_0` in your MySQL server.

**Instructions:** Create a file named `2-remove_database.sql`. In this file, write an SQL query to delete the database `hbtn_0c_0` if it exists. Execute the script using the following command:

```bash
cat 2-remove_database.sql | mysql -hlocalhost -uroot -p
```

### Task 3: List Tables
Write a script that lists all the tables of a database in your MySQL server.

**Instructions:** Create a file named `3-list_tables.sql`. In this file, write an SQL query that takes the database name as an argument and lists all the tables in that database. Execute the script using the following command:

```bash
cat 3-list_tables.sql | mysql -hlocalhost -uroot -p mysql
```

### Task 4: First Table
Write a script that creates a table called `first_table` in the current database in your MySQL server.

**Instructions:** Create a file named `4-first_table.sql`. In this file, write an SQL query to create the table `first_table` with the specified columns. Execute the script using the following command:

```bash
cat 4-first_table.sql | mysql -hlocalhost -uroot -p hbtn_0c_0
```

### Task 5: Full Description
Write a script that prints the full description of the table `first_table` from the database `hbtn_0c_0` in your MySQL server.

**Instructions:** Create a file named `5-full_table.sql`. In this file, write an SQL query to display the full description of the `first_table` table. Execute the script using the following command:

```bash
cat 5-full_table.sql | mysql -hlocalhost -uroot -p hbtn_0c_0
```

### Task 6: List All in Table
Write a script that lists all rows of the table `first_table` from the database `hbtn_0c_0` in your MySQL server.

**Instructions:** Create a file named `6-list_values.sql`. In this file, write an SQL query to list all the rows of the `first_table` table. Execute the script using the following command:

```bash
cat 6-list_values.sql | mysql -hlocalhost -uroot -p hbtn_0c_0
```

### Task 7: First Add
Write a script that inserts a new row in the table `first_table` (database `hbtn_0c_0`) in your MySQL server.

**Instructions:** Create a file named `7-insert_value.sql`. In this file, write an SQL query to insert a new row with the specified values into the `first_table` table. Execute the script using the following command:

```bash
cat 7-insert_value.sql | mysql -hlocalhost -uroot -p hbtn_0c_0
```

### Task 8: Count 89
Write a script that displays the number of records with `id = 89` in the table `first_table` of the database `hbtn_0c_0` in your MySQL server.

**Instructions:** Create a file named `8-count_89.sql`. In this file, write an SQL query to count the number of records with `id = 89` in the `first_table` table.

 Execute the script using the following command:

```bash
cat 8-count_89.sql | mysql -hlocalhost -uroot -p hbtn_0c_0 | tail -1
```

### Task 9: Full Creation
Write a script that creates a table `second_table` in the database `hbtn_0c_0` in your MySQL server and adds multiple rows.

**Instructions:** Create a file named `9-full_creation.sql`. In this file, write an SQL query to create the `second_table` table and add the specified rows. Execute the script using the following command:

```bash
cat 9-full_creation.sql | mysql -hlocalhost -uroot -p hbtn_0c_0
```

### Task 10: List by Best
Write a script that lists all records of the table `second_table` of the database `hbtn_0c_0` in your MySQL server.

**Instructions:** Create a file named `10-top_score.sql`. In this file, write an SQL query to list all the records from the `second_table` table, sorted by score in descending order. Execute the script using the following command:

```bash
cat 10-top_score.sql | mysql -hlocalhost -uroot -p hbtn_0c_0
```

### Task 11: Select the Best
Write a script that lists all records with a score >= 10 in the table `second_table` of the database `hbtn_0c_0` in your MySQL server.

**Instructions:** Create a file named `11-best_score.sql`. In this file, write an SQL query to select all the records from the `second_table` table with a score >= 10, sorted by score in descending order. Execute the script using the following command:

```bash
cat 11-best_score.sql | mysql -hlocalhost -uroot -p hbtn_0c_0
```

### Task 12: Cheating is Bad
Write a script that updates the score of Bob to 10 in the table `second_table`.

**Instructions:** Create a file named `12-no_cheating.sql`. In this file, write an SQL query to update the score of Bob to 10 without using Bob's id value. Execute the script using the following command:

```bash
cat 12-no_cheating.sql | mysql -hlocalhost -uroot -p hbtn_0c_0
```

### Task 13: Score Too Low
Write a script that removes all records with a score <= 5 in the table `second_table` of the database `hbtn_0c_0` in your MySQL server.

**Instructions:** Create a file named `13-change_class.sql`. In this file, write an SQL query to delete all the records from the `second_table` table with a score <= 5. Execute the script using the following command:

```bash
cat 13-change_class.sql | mysql -hlocalhost -uroot -p hbtn_0c_0
```

### Task 14: Average
Write a script that computes the score average of all records in the table `second_table` of the database `hbtn_0c_0` in your MySQL server.

**Instructions:** Create a file named `14-average.sql`. In this file, write an SQL query to calculate the average score of all the records in the `second_table` table. Execute the script using the following command:

```bash
cat 14-average.sql | mysql -hlocalhost -uroot -p hbtn_0c_0
```

### Task 15: Number by Score
Write a script that lists the number of records with the same score in the table `second_table` of the database `hbtn_0c_0` in your MySQL server.

**Instructions:** Create a file named `15-groups.sql`. In this file, write an SQL query to display the score and the number of records for each score, sorted by the number of records in descending order. Execute the script using the following command:

```bash
cat 15-groups.sql | mysql -hlocalhost -uroot -p hbtn_0c_0
```

### Task 16: Say My Name
Write a script that lists all records of the table `second_table` of the database `hbtn_0c_0` in your MySQL server.

**Instructions:** Create a file named `16-no_link.sql`. In this file, write an SQL query to list all the records from the `second_table` table that have a name value. Execute the script using the following command:

```bash
cat 16-no_link.sql | mysql -hlocalhost -uroot -p hbtn_0c_0
```

### Task 17: Go to UTF8
Write a script that converts the `hbtn_0c_0` database to UTF8 (utf8mb4, collate utf8mb4_unicode_ci) in your MySQL server.

**Instructions:** Create a file named `100-move_to_utf8.sql`. In this file, write SQL queries to convert the database, table, and field to UTF8. Execute the script using the following command:

```bash
cat 100-move_to_utf8.sql | mysql -hlocalhost -uroot -p
```

### Task 18: Temperatures #0
Import a table dump in the `hbtn_0c_0` database containing temperature data for different cities.

**Instructions:** Download the table dump

 and import it into the `hbtn_0c_0` database. Then, create a file named `101-avg_temperatures.sql`. In this file, write an SQL query to calculate the average temperature (Fahrenheit) for each city and display the results, ordered by temperature in descending order. Execute the script using the following command:

```bash
cat 101-avg_temperatures.sql | mysql -hlocalhost -uroot -p hbtn_0c_0
```

### Task 19: Temperatures #1
Import the same table dump into the `hbtn_0c_0` database (same as Temperatures #0).

**Instructions:** Create a file named `102-top_city.sql`. In this file, write an SQL query to display the top 3 cities with the highest average temperature during July and August, ordered by temperature in descending order. Execute the script using the following command:

```bash
cat 102-top_city.sql | mysql -hlocalhost -uroot -p hbtn_0c_0
```

### Task 20: Temperatures #2
Import the same table dump into the `hbtn_0c_0` database (same as Temperatures #0).

**Instructions:** Create a file named `103-max_state.sql`. In this file, write an SQL query to display the maximum temperature of each state, ordered by state name. Execute the script using the following command:

```bash
cat 103-max_state.sql | mysql -hlocalhost -uroot -p hbtn_0c_0
```

Congratulations! You have completed the SQL Introduction project. If you have successfully executed all the scripts and obtained the expected outputs, you have gained a solid understanding of SQL, MySQL, and various database-related concepts. Feel free to explore more advanced SQL concepts and continue practicing to become proficient in SQL development. Good luck with your further learning and coding journey!