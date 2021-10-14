------------------------------- Identifying the 2nd Highest Salary

------- Write a SQL query to select the 2nd highest salary in the engineering department. 
------- If more than one person shares the highest salary, the query should select the next highest salary

------------------------------------------------------------------------------------------------------------------------------------------
-                                                            Loading the data
------------------------------------------------------------------------------------------------------------------------------------------

-- 1.  Creating "employees" table;

create table employees
(
   id int,
   first_name varchar(20),
   last_name varchar(50),
   salary int,
   department_id int
);

-- 2. Insert data into "employees" table

INSERT INTO employees (id, first_name, last_name, salary, department_id)
VALUES (103, 'Akhila','A',1203,4), (104, 'Aneela','B',1204,8), (105, 'Hyma', 'C', 1205, 5), (106, 'Venu', 'D', 1206, 7);

-- 3.  Creating "departments" table;

create table departments
(
   id int,
   name varchar(20),
);

-- 4. Insert data into "departments" table

INSERT INTO departments (id, name)
VALUES (4,'engineering'), (4,'engineering'), (4,'engineering'), (7,'Physics');

------------------------------------------------------------------------------------------------------------------------------------------
-                                      SQL Query to 

TRICK! : whenever occurences comes use "ROW_NUMBER()" function
------------------------------------------------------------------------------------------------------------------------------------------
Actual solution:







