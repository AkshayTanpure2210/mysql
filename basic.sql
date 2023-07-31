show databases;                                            /* by using this commond we find all list of databases */

use classicmodels;                                         /* whenever we want to use perticular database in our project thn firstly we apply USE commond and that database name */

show tables;                                               /* after using this database we want to see tables names thn we follow this commond */

use employees;                                             /* here we using employees table from classicmodels database */

select * from employees;                                   /* by using select query we select the column from that table */

select firstName,lastName from employees;                  /* multiple column can access in single select commond */

select now ()  ;                                          /* using this select noe commond we get g=current date and time of that tables */










/* ORDER BY 
/* order by - mean when you select coulumn and that coulumn we want ASC or decending From that time we try this query*/
/*  In this syntax, you specify the one or more columns that you want to sort after the ORDER BY clause.
/*  The ASC stands for ascending and the DESC stands for descending. You use ASC to sort the result set in ascending order and DESC to sort the result set in descending order respectively */
 
SELECT 
     firstName
from 
     employees 
order by 
    firstName ASC;     




/* here we try to implement decending form of column */


select firstName from emplyees order by firstName DESC;

select firstNAme from employees;





/*  Example 2 */

show tables;
use customers;
select * from customers;                                   


SELECT
	 contactLastname,
	 contactFirstname,
      phone ,
      city
FROM
     customers
ORDER BY
    contactFirstname,
    contactLastname DESC,
    city ASC,
    phone;



/*same example but here we try to change position of that columns*/
 
SELECT                            
    city,                                 
    contactLastName , 
    contactFirstName
FROM 
    customers 
ORDER BY 
    city ,
    contactLastName DESC ,
    contactFirstname ASC;




show databases;
use classicmodels;
show tables;
use offices;

select * from offices;

select now ();                                                        /* current date */ 

SELECT CONCAT('John',' ','Doe');
                                                                     
SELECT CONCAT('John',' ','Doe') firstName;                           /* concadination of two string value */

SELECT CONCAT('RAM',' ','RAJE')LASTNAME;                             /* without AS*/

SELECT CONCAT('Rahul',' ','jain') AS firstName;                      /* here we provide AS for assign coulumn name */






USE TABLES;

SELECT * FROM CUSTOMERS;

SELECT 
      CONTACTFIRSTNAME,
      CONTACTLASTNAME
FROM 
     CUSTOMERS
ORDER BY 
	 CONTACTLASTNAME DESC,
      CONTACTFIRSTNAME ASC;


SELECT 
     ORDERNUMBER,
     ORDERLINENUMBER ,
     QUANTITYORDERED *PRICEEACH
FROM 
    ORDERDETAILS
ORDER BY 
    QUANTITYORDERED * PRICEEACH DESC;
    
  
SELECT 
       ORDERNUMBER ,
       ORDERLINENUMBER,
       QUANTITYORDERED *PRICEEACH AS SUBTOTAL    /* two column product and AS is use for resulting columns name as SUBTOTAL*/
FROM
      ORDERDETAILS
ORDER BY 
      SUBTOTAL DESC;
      
      
      
/* Using MySQL ORDER BY FIELD  clause to sort data using a custom list */

USE ORDERS;
SELECT 
      ORDERNUMBER , STATUS 
FROM 
      ORDERS
ORDER BY FIELD 
      (STATUS , 'IN PROCESS', 'ON HOLD', 'RESOLVED','DISPUTED','SHIPPED');
    
  /*  
    +-------------+------------+
| orderNumber | status     |
+-------------+------------+
|       10425 | In Process |
|       10421 | In Process |
|       10422 | In Process |
|       10420 | In Process |
|       10424 | In Process |
|       10423 | In Process |
|       10414 | On Hold    |
|       10401 | On Hold    |
|       10334 | On Hold    |
|       10407 | On Hold    |
...
*/

/* MYSQL ORDER BY NULL*/
SELECT 
     FIRSTNAME ,LASTNAME , REPORTSTO
FROM
     EMPLOYEES
ORDER BY 
     REPORTSTO;
     
/*
Output:

+-----------+-----------+-----------+
| firstName | lastName  | reportsTo |
+-----------+-----------+-----------+
| Diane     | Murphy    |      NULL |
| Mary      | Patterson |      1002 |
| Jeff      | Firrelli  |      1002 |
| William   | Patterson |      1056 |
| Gerard    | Bondur    |      1056 |


*/


SELECT 
    firstName, lastName, reportsTo
FROM
    employees
ORDER BY reportsTo DESC;


/*

+-----------+-----------+-----------+
| firstName | lastName  | reportsTo |
+-----------+-----------+-----------+
| Yoshimi   | Kato      |      1621 |
| Leslie    | Jennings  |      1143 |
| Leslie    | Thompson  |      1143 |
| Julie     | Firrelli  |      1143 |
| ....
| Mami      | Nishi     |      1056 |
| Mary      | Patterson |      1002 |
| Jeff      | Firrelli  |      1002 |
| Diane     | Murphy    |      NULL |
+-----------+-----------+-----------+in above result we saw null valu in last row bcz of decending sort
*/




/* where clauses uses 
//max use for update and delete statement from specify rows 
//after 'FROM' clause we can use where and than condition for specify column
//example */


show databases;
use classicmodels;
show tables;
select * from employees;

SELECT 
     lastNAme,
     firstName ,
     officeCode,
     jobtitle
FROM 
    employees
WHERE
    officeCode = '1'  And  lastname ='Murphy' or
    jobtitle ='sales rep';
   /* in above example we use 'AND' 'OR' operator for condition */ 
   
SELECT 
      firstName,                              /* we can use  order by commond after where statement*/
      lastName,
      officecode
From
     employees
Where 
     officecode 
between 
     1 AND 4
order BY 
     officecode;
     
     
     
     

                                                                          
/* where and  like */
  
show databases;                                                           /* like use for condition where we want colums records    "in above example Payment date coulumn return 2004-12-15  records "*/
                                                                           
use classicmodels;
show tables;
select * from payments;

SELECT 
      customerNumber,
      paymentdate,
      amount
From
      payments
WHERE
      paymentDate like '2004-12-15';
   
                                                                          
/*IN Operator  
folowwing example is on IN operator  if any value getting match in that column than in operator gives return */ 

SELECT 
     FIRSTNAME ,
     LASTNAME,
     OFFICECODE
FROM 
     EMPLOYEES 
WHERE 
     OFFICECODE 
     IN 
     (1,2,3)
ORDER BY 
     OFFICECODE;





/*  IS NULL OPERATOR USE FOR FIND DATA FROM COLUMS WHERE VALUE IS NULL */

SELECT 
     LASTNAME ,
     FIRSTNAME,
     REPORTSTO 
 FROM 
     EMPLOYEES 
WHERE 
    REPORTSTO IS NULL
ORDER BY 
    REPORTSTO;

  
  
  
  
/* COMPARISION OPERATOR <> this sign use for whatever we after that sign is match thn those data we dont want */ 

SELECT JOBTITLE FROM EMPLOYEES;                                          /*before this commond use observed the jobtitle column */  


SELECT 
     LASTNAME,
     FIRSTNAME,
     JOBTITLE
 FROM 
     EMPLOYEES 
 WHERE 
      JOBTITLE <> 'SALES REP';




/* <= value;*/

SELECT * FROM EMPLOYEES;
SELECT 
     LASTNAME,
     FIRSTNAME,
     OFFICECODE
FROM 
    EMPLOYEES
WHERE 
   OFFICECODE <=4; 
   
   /*
   THIS ALL ABOUT WHERE CLAUSES 
   USE THE WHERE CLAUSE FOR FILTER ROWS BY CONDITION
   */
   
   
   
