------------------------------- Calculating Product Average --------------------------

-- 1.  Creating "transactions" table;

create table transactions
(
   id int,
   user_id int,
   created_at Date,
   product_id int,
   quantity int
);

-- 2. Create "products" table

create table products
(
    id int,
    name varchar(30),
    price float
);

-- 3. Insert data into "transactions" table

INSERT INTO transactions (id, user_id, created_at, product_id, quantity)
VALUES (103, 1203,'2021-09-01',1,4), (104, 1203,'2021-09-02',2,8), (105, 1204, '2021-09-01', 1, 5), (106, 1204, '2021-09-02', 3, 7);

--4. Insert data into "products" table

INSERT INTO products (id, name, price)
VALUES (1203, 'Apple', 40.5), (1204, 'Orange',8), (1205, 'Banana', 2.5), (1206,'Custard Apple', 37);
