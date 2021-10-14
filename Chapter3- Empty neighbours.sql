------------------------------- Identifying Empty Neighbours

------- We're given two tables, a users table with demographic information and the neighborhood they live in and a neighborhoods table.
------ Write a query that returns all of the neighborhoods that have 0 users.

------------------------------------------------------------------------------------------------------------------------------------------
-                                                            Loading the data
------------------------------------------------------------------------------------------------------------------------------------------

-- 1.  Creating "users" table;

create table users
(
   id int,
   name varchar(30),
   created_at Date,
   neighborhood_id int
);

-- 2. Insert data into "users" table

INSERT INTO users (id, name, created_at, neighborhood_id)
VALUES (103, 'Akhila','2021-09-01',1), (104, 'Aneela','2021-09-02',8), (105, 'Hyma', '2021-09-01', 5);


-- 3. Create "neighborhoods" table

create table neighborhoods
(
    id int,
    name varchar(30),
    city_id int
);

--4. Insert data into "neighborhoods" table

INSERT INTO neighborhoods (id, name, city_id)
VALUES (1203, 'Akhila', 40.5), (1204, 'Aneela',8), (1205, 'Hyma', 2.5), (1206,'Venu', 37);

------------------------------------------------------------------------------------------------------------------------------------------
-                                            QUERY TO IDENTIFY THE EMPTY NEIGHBOURS

- TRICK: Whenever the question asks about finding values with "0" something (users, employees, posts, etc..) immediately think of the concept of "LEFT JOIN" !
------------------------------------------------------------------------------------------------------------------------------------------
 

