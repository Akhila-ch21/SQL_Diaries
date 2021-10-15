------------------------------- 

------- 

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

------------------------------------------------------------------------------------------------------------------------------------------
-                                      SQL Query to Classify the triangles

TRICK! : use "CASE STATEMENTS" for solving Classification problems 
------------------------------------------------------------------------------------------------------------------------------------------
-- Actual solution:

select 
case 
     when ((A+B)<=C) or ((B+C)<=A) or ((A+C)<=B) then 'Not A Triangle'
     when A =B and B=C and A=C  then 'Equilateral' 
     when (A=B and B<>C) or (B=C and C<>A) or (A=C and B<>C) then 'Isosceles'
     when (A<>B) and (B<>C) and (A<>C) then 'Scalene'
end as TYPED
from triangles 

     






