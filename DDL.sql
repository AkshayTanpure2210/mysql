<<<<<<< HEAD
/*
in this DDL( database definition language ) file we can see  how to create table ,Alter table and drop table)
*/

show databases;
use classicmodels;
show tables;



/* create table by following syntax*/

CREATE TABLE IF NOT EXISTS  projectPlan
(id INT AUTO_INCREMENT,
title  VARCHAR(255),
starting_date DATE  NOT NULL,
ending_date DATE  NOT NULL,
PRIMARY KEY (id));


/*here we inserting data in above table*/

 
INSERT INTO  projectgPlan (title,starting_date,ending_date)
VALUES('new crm','2022-02-25','0000-00-00'),
('ERP FUTURE','2022-03-2','0000-00-00'),
('VR','2022-04-06','2045-01-05');

SELECT * FROM  projectPlan
WHERE ending_date IS NULL;
/*SET*/
SET @@sql_auto_is_null=1;

INSERT INTO projectPlan (title,starting_date,ending_date)
VALUES('MRP III','2024-01-01','0000-00-00');

SELECT * FROM projectPlan;



/*another example*/


show databases;
use classicmodels;
/* USE ALTERTABLE */
show tables;

CREATE TABLE vehicles(
Id INT, 
year INT NOT NULL,
 make VARCHAR(100) NOT NULL,
PRIMARY KEY (Id));                         /*primary key shows unique value /column from that table which did not match to another value*/             
select * from vehicles;


/*
ALTER TABLE statement to add a column, alter a column, rename a column, drop a column and rename a table.
Example 1- add column in vehicle table 
*/


ALTER TABLE vehicles
ADD model VARCHAR(100)NOT NULL;


/*we can add multiple column 
example 2
*/

ALTER TABLE vehicles
ADD note VARCHAR(255),
ADD color VARCHAR (50);


/*
HERE NOTE COLUMN IS (255) CHAR VALUE, NULL AND U WANT TO CHANGE CHAR VALUE TO 100 AND NOT NULL THAT TIME ALSO WE CAN USE ALTER SYNTAX
*/

ALTER TABLE vehicles 

MODIFY  note VARCHAR(100) NOT NULL;



ALTER TABLE vehicles 
MODIFY year SMALLINT NOT NULL,
MODIFY color VARCHAR (20) NULL AFTER make;


/*
NOW SEE HOW TO CHANGE COLUMN NAME IN ALTER 

USE CHANGE COLUMN ORIGINAL NAME AND THN PROVIDE NEW NAME ITS DATA TYPE 
*/

ALTER TABLE vehicles 
CHANGE COLUMN note vehiclecondition VARCHAR(100) NOT NULL;

/* 
RENAME TO TABLE NAME BY FOLLOWING SYNTAX
*/


ALTER TABLE vehicles
RENAME TO Bikes;
ALTER TABLE BIKES
RENAME TO VEHICLES;



/*
U CAN DROP THE COLUMN FROM THE DATABASE USING FOLLOWING COMMOND
*/

ALTER TABLE vehicles
DROP COLUMN vehicleCondition;



































