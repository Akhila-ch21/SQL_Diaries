------------------------------- Average Order Value (AOV)

------- Given three tables, representing customer transactions and customer attributes:

-- 1. Write a query to get the average order value by gender.

-- 2. Let's say our example output from the above query is:

-- Men
-- AOV: $46.3
-- Total purchases: 2500
-- Unique purchasers: 1500

-- Women
-- AOV: $50.2
-- Total purchases: 3500
-- Unique purchasers: 500

-- Would the difference in AOV (average order value) be significant?

-- Note: remember to round your answer to two decimal places!

------------------------------------------------------------------------------------------------------------------------------------------
-                                                            Loading the data
------------------------------------------------------------------------------------------------------------------------------------------

-- 1. Creating "Products" table
                          
create table products
(
   id int,
   name varchar(30),
   price float
   );

-- 2. Insert data into "Products" table

INSERT INTO Products (id, name, price)
VALUES (1203,'Apple',45), (1203,'Banana',46), (1204,'Orange',50), (1204,'Custard Apple',100);

-- 3.  Creating "transactions" table;

create table transactions
(
   id int,
   user_id int,
   created_at Date,
   product_id int,
   quantity int
);

-- 4. Insert data into "transactions" table

INSERT INTO transactions (id, user_id, created_at, product_id, quantity)
VALUES (103, 1,'2021-09-01',1203,4), (104, 2,'2021-09-02',1203,8), (105, 2, '2021-09-01', 1204, 5), (106, 3, '2021-09-02', 1204, 7);

-- 5.  Creating "transactions" table;

create table users
(
   id int,
   name varchar(30),
   sex varchar(30)
   );

-- 6. Insert data into "users" table

INSERT INTO users (id, name, sex)
VALUES (1,'Akhila','F'), (2,'Aneela','F'), (3,'Hyma','F'), (4,'Venu','M');

------------------------------------------------------------------------------------------------------------------------------------------
-                                      SQL Query to 

TRICK! : whenever occurences comes use "ROW_NUMBER()" function
------------------------------------------------------------------------------------------------------------------------------------------
Actual solution:







