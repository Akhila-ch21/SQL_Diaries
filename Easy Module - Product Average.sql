------------------------------- Calculating Product Average

------- Given a table of transactions and products, write a query to return the product id, product price, 
------- and average transaction price of all products with price greater than the average transaction price.

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


-- 3. Create "products" table

create table products
(
    id int,
    name varchar(30),
    price float
);

--4. Insert data into "products" table

INSERT INTO products (id, name, price)
VALUES (1203, 'Apple', 40.5), (1204, 'Orange',8), (1205, 'Banana', 2.5), (1206,'Custard Apple', 37);

------------------------------------------------------------------------------------------------------------------------------------------
-                                      SQL Query to calculate the Average transactional value of the product
------------------------------------------------------------------------------------------------------------------------------------------
Actual solution:

WITH zap AS (
    SELECT ROUND(AVG(price * quantity), 2) AS avg_price
    FROM transactions AS t
    INNER JOIN products AS p
    	ON t.product_id = p.id
    
)

SELECT product_id, product_price, avg_price
FROM zap
INNER JOIN (
    SELECT product_id, ROUND(AVG(price),2) AS product_price
    FROM transactions as t
    INNER JOIN products AS p
        ON t.product_id = p.id
    GROUP BY 1
    
) AS ap
    ON ap.product_price > zap.avg_price;

