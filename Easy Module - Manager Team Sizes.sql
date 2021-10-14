------------------------------- Manager Team Sizes

------- Write a query to identify the manager with the biggest team size. You may assume there is only one manager with the largest team size

------------------------------------------------------------------------------------------------------------------------------------------
-                                                            Loading the data
------------------------------------------------------------------------------------------------------------------------------------------

-- 1.  Creating "employees" table;

create table employees
(
   id int,
   first_name varchar(30),
   last_name varchar(30),
   salary int,
   created_at Date,
   department_id int,
   manager_id int
);

-- 2. Insert data into "employees" table

INSERT INTO employees (id, first_name, last_name,salary, created_at,product_id, department_id, manager_id)
VALUES (103, 1,'2021-09-01',1203,4), (104, 2,'2021-09-02',1203,8), (105, 2, '2021-09-01', 1204, 5), (106, 3, '2021-09-02', 1204, 7);

-- 3.  Creating "managers" table;

create table managers
(
   id int,
   name varchar(30),
   team varchar(30)
);

-- 4. Insert data into "managers" table

INSERT INTO managers (id, name, team)
VALUES (103, 1,'2021-09-01',1203,4), (104, 2,'2021-09-02',1203,8), (105, 2, '2021-09-01', 1204, 5), (106, 3, '2021-09-02', 1204, 7);

------------------------------------------------------------------------------------------------------------------------------------------
-                                      SQL Query to 

TRICK! : whenever occurences comes use "ROW_NUMBER()" function
------------------------------------------------------------------------------------------------------------------------------------------
Actual solution:







