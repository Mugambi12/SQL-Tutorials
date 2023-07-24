-- Lists all databases of my MySQL server.
SHOW DATABASES;

-- Creates the database hbtn_0c_0 in my MySQL server.
CREATE DATABASE IF NOT EXISTS `hbtn_0c_0`;

-- Deletes the database hbtn_0c_0 from my MySQL server.
DROP DATABASE IF EXISTS `hbtn_0c_0`;

-- Lists all tables of a database on my MySQL server.
SHOW TABLES;

-- Creates a table called first_table with values id and name in my MySQL server.
CREATE TABLE IF NOT EXISTS `first_table` (`id` INT, `name` VARCHAR(256));

-- Prints the full description of the table first_table in my MySQL server.
SHOW CREATE TABLE `first_table`;

-- Lists all rows of the table first_table in my MySQL server.
SELECT * FROM `first_table`;

-- Inserts a new row into the table first_table in my MySQL server.
INSERT INTO `first_table` (`id`, `name`) VALUES (89, "Best School");

-- Displays the number of records with id = 89 in the table first_table in my MySQL server.
SELECT COUNT(*)
FROM `first_table`
WHERE `id` = 89;

-- Creates and fills a table second_table with attributes id, name and score in my MySQL server with multiple rows.
CREATE TABLE IF NOT EXISTS `second_table` (`id` INT, `name` VARCHAR(256), `score` INT);
INSERT INTO `second_table` (`id`, `name`, `score`) VALUES (1, "John", 10);
INSERT INTO `second_table` (`id`, `name`, `score`) VALUES (2, "Alex", 3);
INSERT INTO `second_table` (`id`, `name`, `score`) VALUES (3, "Bob", 14);
INSERT INTO `second_table` (`id`, `name`, `score`) VALUES (4, "George", 8);

-- Retrieve all records from the table second_table.
-- The records are sorted in descending order based on the score.
SELECT `score`, `name`
FROM `second_table`
ORDER BY `score` DESC;

-- Lists all records in the table second_table with a score >= 10 in my MySQL server.
-- Records are ordered by descending score.
SELECT `score`, `name`
FROM `second_table`
WHERE `score` >= 10
ORDER BY `score` DESC;

-- Updates the score of Bob to 10 in the table second_table in my MySQL server.
SET SQL_SAFE_UPDATES = 0;
UPDATE `second_table`
SET `Score` = 10
WHERE `Name` = 'Bob';
SET SQL_SAFE_UPDATES = 1;

-- Removes all records with a score <= 5 in the table second_table in my MySQL server.
DELETE FROM `second_table`
WHERE `score` <= 5;

-- Computes the average score of all records in the table second_table in my MySQL server.
SELECT AVG(`score`) AS `average`
FROM `second_table`;

-- This query lists the number of records with the same score in the table second_table in the MySQL server.
-- The result set is grouped by the score column, and the count of records for each score is calculated.
-- The result is then ordered in descending order based on the count.
SELECT `score`, COUNT(*) AS `number`
FROM `second_table`
GROUP BY `score`
ORDER BY `number` DESC;

-- Lists all records of the table second_table having a name value in my MySQL server.
-- Records are ordered by descending score.
SELECT `score`, `name`
FROM `second_table`
WHERE `name` != ""
ORDER BY `score` DESC;

-- Converts the entire database hbtn_0c_0 to UTF8.

USE hbtn_0c_0;
ALTER TABLE first_table
MODIFY COLUMN name VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- Displays the average temperature (in Fahrenheit) by city ordered by descending temperature.
SELECT `city`, AVG(`value`) AS `avg_temp`
FROM `temperatures`
GROUP BY `city`
ORDER BY `avg_temp` DESC;

-- Displays the 3 cities with the highest average temperatures between July and August.
SELECT `city`, AVG(`value`) AS `avg_temp`
FROM `temperatures`
WHERE `month` = 7 OR `month` = 8
GROUP BY `city`
ORDER BY `avg_temp` DESC
LIMIT 3;

-- Displays the max temperature of each state, ordered by state name.
SELECT `state`, MAX(`value`) AS `max_temp`
FROM `temperatures`
GROUP BY `state`
ORDER BY `state`;



