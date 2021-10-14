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

TRICK! : whenever occurences comes use "ROW_NUMBER()" function
------------------------------------------------------------------------------------------------------------------------------------------
Actual solution:


WITH Occurences AS 
(
    SELECT 
        *,
        ROW_NUMBER () OVER (PARTITION BY user_id order by created_at  asc ) AS "Occurence"            
    FROM transactions
)
SELECT 
    user_id,
    created_at,
    product_id,
    quantity
FROM Occurences 
WHERE Occurence = 3


Another method: same logic

SELECT t.user_id, t.created_at, t.product_id, t.quantity FROM 
(select *, row_number() over (partition by user_id order by created_at) as row_count from transactions) as t 
where t.row_count = 3

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

