------------------------------- Top 5 Apple Actions

------- The events table tracks every time a user performs a certain action (like, post_enter, etc.) on a platform (android, web, etc.).

------- Write a query to determine the top 5 actions performed during the month of November 2020, for actions performed on an Apple platform (iphone, ipad).

------- The output should include the action performed and their rank in ascending order. If two actions performed equally, they should have the same rank. 



------------------------------------------------------------------------------------------------------------------------------------------
-                                                            Loading the data
------------------------------------------------------------------------------------------------------------------------------------------

-- 1.  Creating "events" table;

create table events
(
   user_id int,
   created_at Date,
   action varchar(30),
   platform varchar(50)
);

-- 2. Insert data into "events" table

INSERT INTO transactions (user_id, created_at, action, platform)
VALUES (101,'2020-11-01',"action1",'Apple'), ( 102,'2020-11-02',"action2","Apple"), (103, '2020-11-04', "action3", "Apple"), (104, '2020-12-25', "action4", "Android");


------------------------------------------------------------------------------------------------------------------------------------------
-                                      SQL Query to 

TRICK! : whenever occurences comes use "ROW_NUMBER()" function
------------------------------------------------------------------------------------------------------------------------------------------
Actual solution:







