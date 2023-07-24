## Guide to Learning the Project "SQL - More queries"

### Introduction
In this project, you will learn about advanced SQL queries, user management, constraints, subqueries, joins, and more. You will be working with the MySQL database on an Ubuntu 20.04 LTS system. The project consists of several tasks, each of which involves writing SQL queries to perform specific operations on the database.

### Prerequisites
Before you start the project, make sure you have the following:

1. A basic understanding of SQL and relational databases.
2. MySQL 8.0 installed on your Ubuntu 20.04 LTS system.
3. Access to the database server with the necessary privileges.

### Project Tasks and Instructions
Below are the tasks and their corresponding instructions. You are required to create SQL files for each task with the provided queries. The tasks are meant to help you achieve the learning objectives mentioned in the project.

#### Task 0: My privileges!
**Objective**: Learn how to list all privileges of MySQL users.

**Instructions**: Create a script that lists all privileges of the MySQL users `user_0d_1` and `user_0d_2` on your server (in localhost). If the users do not exist, create them with the necessary privileges.

#### Task 1: Root user
**Objective**: Understand how to create a new MySQL user with all privileges.

**Instructions**: Write a script that creates the MySQL server user `user_0d_1` with all privileges on your MySQL server. The password for `user_0d_1` should be set to `user_0d_1_pwd`. If the user `user_0d_1` already exists, your script should not fail.

#### Task 2: Read user
**Objective**: Learn to create a new MySQL user with limited privileges.

**Instructions**: Write a script that creates the database `hbtn_0d_2` and the user `user_0d_2`. `user_0d_2` should have only SELECT privilege on the database `hbtn_0d_2`, and the password for `user_0d_2` should be set to `user_0d_2_pwd`. If the database `hbtn_0d_2` or the user `user_0d_2` already exists, your script should not fail.

#### Task 3: Always a name
**Objective**: Understand the concept of constraints.

**Instructions**: Create a script that creates the table `force_name` on your MySQL server. The table should have two columns, `id` of type INT (auto-generated, unique, not null, and primary key), and `name` of type VARCHAR(256) (cannot be null).

#### Task 4: ID can't be null
**Objective**: Learn about default values in SQL.

**Instructions**: Write a script that creates the table `id_not_null` on your MySQL server. The table should have two columns, `id` of type INT with the default value 1, and `name` of type VARCHAR(256). If the table `id_not_null` already exists, your script should not fail.

#### Task 5: Unique ID
**Objective**: Understand unique constraints.

**Instructions**: Create a script that creates the table `unique_id` on your MySQL server. The table should have two columns, `id` of type INT with the default value 1 and must be unique, and `name` of type VARCHAR(256). If the table `unique_id` already exists, your script should not fail.

#### Task 6: States table
**Objective**: Learn about creating a new table with constraints and primary keys.

**Instructions**: Write a script that creates the database `hbtn_0d_usa` and the table `states` (in the database `hbtn_0d_usa`) on your MySQL server. The table should have two columns, `id` of type INT (unique, auto-generated, not null, and primary key), and `name` of type VARCHAR(256) (cannot be null). If the database `hbtn_0d_usa` or the table `states` already exists, your script should not fail.

#### Task 7: Cities table
**Objective**: Learn about foreign keys and referencing other tables.

**Instructions**: Write a script that creates the database `hbtn_0d_usa` and the table `cities` (in the database `hbtn_0d_usa`) on your MySQL server. The table should have three columns, `id` of type INT (unique, auto-generated, not null, and primary key), `state_id` of type INT (cannot be null and must be a foreign key referencing the `id` column of the `states` table), and `name` of type VARCHAR(256) (cannot be null). If the database `hbtn_0d_usa` or the table `cities` already exists, your script should not fail.

#### Task 8: Cities of California
**Objective**: Learn to fetch data using SQL queries.

**Instructions**: Write a

 / 8 Lu 2023

Feel free to ask for any help or information you need.

Please note that I can only provide information up to September 2021. Therefore, any events or developments that occurred after that date will be outside my scope of knowledge.

#### Task 9: Cities in California
**Objective**: Fetch data using JOIN and WHERE clauses.

**Instructions**: Write a script that lists all the cities from the `cities` table in the `hbtn_0d_usa` database, along with the corresponding state name from the `states` table. Only include cities that belong to the state with the name 'California'. The result should show two columns: `city` (for city name) and `state` (for state name).

#### Task 10: Genre ID for `The Hobbit`
**Objective**: Learn to use subqueries.

**Instructions**: Write a script that lists the `genre_id` of the book with the title 'The Hobbit' from the `books` table in the `hbtn_0d_tvshows` database.

#### Task 11: Number of books by genre
**Objective**: Understand how to use aggregate functions.

**Instructions**: Write a script that lists each genre's name and the number of books associated with that genre from the `books` table in the `hbtn_0d_tvshows` database. The result should show two columns: `genre` (for genre name) and `count` (for the number of books in that genre).

#### Task 12: Number of watches by genre
**Objective**: Learn to use GROUP BY and ORDER BY.

**Instructions**: Write a script that lists each genre's name and the number of watches (sum of all views) for that genre from the `shows` table in the `hbtn_0d_tvshows` database. The result should show two columns: `genre` (for genre name) and `num_watches` (for the number of watches).

#### Task 13: User popularity
**Objective**: Understand how to use JOIN with aggregate functions.

**Instructions**: Write a script that lists each user's name and their popularity score, which is the sum of all views they contributed (through shows they watched) from the `users` and `shows` tables in the `hbtn_0d_tvshows` database. Sort the result in descending order based on popularity score. The result should show two columns: `user` (for user name) and `popularity` (for the popularity score).

#### Task 14: Top 3 popular shows
**Objective**: Learn to use LIMIT.

**Instructions**: Write a script that lists the top 3 most popular shows based on the number of views (`watched`) from the `shows` table in the `hbtn_0d_tvshows` database. The result should show two columns: `show` (for show name) and `views` (for the number of views).

#### Task 15: Shows not watched
**Objective**: Understand how to use LEFT JOIN and IS NULL.

**Instructions**: Write a script that lists the shows' names (from the `shows` table in the `hbtn_0d_tvshows` database) that have not been watched by any user. The result should show a single column: `show` (for show name).

#### Task 16: Usernames and shows
**Objective**: Learn about filtering and ordering with multiple tables.

**Instructions**: Write a script that lists each user's name, their favorite show's name (if available), and the number of views (`watched`) for that show from the `users` and `shows` tables in the `hbtn_0d_tvshows` database. The result should show three columns: `user` (for user name), `favorite_show` (for the favorite show's name), and `views` (for the number of views).

#### Task 17: Popular shows by genre
**Objective**: Understand how to use multiple JOINs and aggregate functions.

**Instructions**: Write a script that lists the most popular show's name in each genre based on the number of views (`watched`) from the `shows` and `genres` tables in the `hbtn_0d_tvshows` database. The result should show two columns: `genre` (for genre name) and `popular_show` (for the most popular show's name in that genre).

#### Task 18: Updating show genre
**Objective**: Learn to use the UPDATE statement.

**Instructions**: Write a script that updates the genre of the show with the title 'Stranger Things' to have the `genre_id` 7 (Science Fiction) in the `shows` table of the `hbtn_0d_tvshows` database.

#### Task 19: Delete by genre
**Objective**: Understand the DELETE statement.

**Instructions**: Write a script that deletes all the shows with the genre 'Reality TV' from the `shows` table in the `hbtn_0d_tvshows` database.

#### Task 20: Rating average for genre
**Objective**: Learn to use the AVG() function.

**Instructions**: Write a script that lists each genre's name and the average rating for shows in that genre from the `shows` and `genres` tables in the `hbtn_0d_tvshows` database. The result should show two columns: `genre` (for genre name) and `average_rating` (for the average rating of shows in that genre).

Feel free to ask if you have any questions or need further assistance with any of the tasks!