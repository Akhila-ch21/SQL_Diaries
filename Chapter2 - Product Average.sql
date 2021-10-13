------------------------------- Calculating Product Average --------------------------

-- 1.  Creating "transactions" table;

create table transactions
(
   id int,
   user_id int,
   created_at DateTimeoffset,
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

-- 3. Insert data into table

INSERT INTO transactions (id, user_id, created_at, product_id, quantity)
VALUES ('103', 1203,2021-09-01,1,4);
        
