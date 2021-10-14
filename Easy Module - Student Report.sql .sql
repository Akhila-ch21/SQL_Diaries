------------------------------- THE STUDENT REPORT

------- Ketty gives Eve a task to generate a report containing three columns: Name, Grade and Mark.
------- Ketty doesn't want the NAMES of those students who received a grade lower than 8. The report must be in descending order by grade -- i.e. higher grades are entered first. 
------- If there is more than one student with the same grade (8-10) assigned to them, order those particular students by their name alphabetically. 
------- Finally, if the grade is lower than 8, use "NULL" as their name and list them by their grades in descending order. 
------- If there is more than one student with the same grade (1-7) assigned to them, order those particular students by their marks in ascending order.
------- Write a query to help Eve.

------------------------------------------------------------------------------------------------------------------------------------------
-                                                            Loading the data
------------------------------------------------------------------------------------------------------------------------------------------

-- 1.  Creating "students" table;

create table students

(
   id int,
   name varchar(20),
   Marks int
);

-- 2. Insert data into "students" table

INSERT INTO students (id, name, marks)
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
-                                      SQL Query to 

TRICK! : whenever occurences comes use "ROW_NUMBER()" function
------------------------------------------------------------------------------------------------------------------------------------------
Actual solution:







