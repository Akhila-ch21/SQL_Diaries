------------------------------- Identifying Third Purchase

------- Given the revenue transactions table above, write a query that finds the third purchase of every user.
------------------------------------------------------------------------------------------------------------------------------------------
-                                                            Loading the data
------------------------------------------------------------------------------------------------------------------------------------------
-- 1.  Creating "transactions" table;

create table transactions
(
   id int,
   user_id int,
   created_at Date,
   product_id int,
   quantity int
);

-- 2. Insert data into "transactions" table

INSERT INTO transactions (id, user_id, created_at, product_id, quantity)
VALUES (103, 1,'2021-09-01',1203,4), (104, 2,'2021-09-02',1203,8), (105, 2, '2021-09-01', 1204, 5), (106, 3, '2021-09-02', 1204, 7);

------------------------------------------------------------------------------------------------------------------------------------------
-                                      SQL Query to Identify the Third Purchase
------------------------------------------------------------------------------------------------------------------------------------------
Actual solution:



------------------------------------------------------------------------------------------------------------------------------------------
-                                      SQL Query to Identify the First Purchase 
------------------------------------------------------------------------------------------------------------------------------------------
Actual solution:

SELECT user_id, MIN(created_at) as created_at, product_id, quantity from transactions
group by user_id

------------------------------------------------------------------------------------------------------------------------------------------
-                                      SQL Query to Identify the Latest Purchase 
------------------------------------------------------------------------------------------------------------------------------------------
Actual solution:

SELECT user_id, MAX(created_at) as created_at, product_id, quantity from transactions
group by user_id

