show databases;                                            /* by using this commond we find all list of databases *\

use classicmodels;                                         /* whenever we want to use perticular database in our project thn firstly we apply USE commond and that database name 

show tables;                                               /* after using this database we want to see tables names thn we follow this commond *\

use employees;                                             /* here we using employees table from classicmodels database *\

select * from employees;                                   /* by using select query we select the column from that table *\

select firstName,lastName from employees;                  /* multiple column can access in single select commond *\


select                                                     /*  order by - mean when you select coulumn and that coulumn we want ASc or decending From that time we try this query    
    firstName
from 
    emplyees 
order by 
    firstName ASC;     

select firstNAme from employees;
select firstName from emplyees order by firstName DESC;
select firstNAme from employees;


show tables;
use customers;
select * from customers;                                   /*  Example 2 *\  

SELECT
	contactLastname,
	contactFirstname,
    phone ,
    city
FROM
    customers
ORDER BY
    contactFirstname
	contactLastname DESC
    city ASC;
    phone



SELECT                             /*same example but here we try to change position of that coulmns*\
    city,                                 
    contactLastName , 
    contactFirstName
FROM 
    customers 
ORDER BY 
    city ,
    contactLastName DESC ,
    contactFirstname ASC;










  
