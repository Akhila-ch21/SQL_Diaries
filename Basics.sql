#### Chapter1 : Basic SQL Queries 
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 1. Create a new table

create table transactions
(
   id int,
   user_id varchar(30),
   created_at DateTimeoffset,
   product_id int,
   quantity int
);
--------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 2. Delete a table

drop table transactions;

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 3. Inserting data into a table;

INSERT INTO transactions (id, user_id, created_at, product_id, quantity)
VALUES (103, 1,'2021-09-01',1203,4), (104, 2,'2021-09-02',1203,8), (105, 2, '2021-09-01', 1204, 5), (106, 3, '2021-09-02', 1204, 7);
--------------------------------------------------------------------------------------------------------------------------------------------------------------------

--4. Fetching all the records from a table 

select * from transactions
--------------------------------------------------------------------------------------------------------------------------------------------------------------------

--5. Fetching "nth row" from a table

select * from transactions limit n-1, 1
--------------------------------------------------------------------------------------------------------------------------------------------------------------------

--6. Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.

-- Method1: 
select distinct city from station where LOWER(SUBSTR(city,1,1)) in ('a','e','i','o','u')

-- Method2:
select distinct(CITY) from STATION where lower(CITY) REGEXP '^[aeiou]' ; -- "^" indicates the first letter of the string in Regular expressions

-- Method3: (ineffecient)
select distinct(CITY) from STATION where lower(CITY) like 'a%' or lower(city) like 'e%' or lower(city) like 'i%' or lower(city) like 'o%' or lower(city) like 'u%'

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

--6. Query the list of CITY names ending with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.

-- Method1: 
select distinct city from station where LOWER(SUBSTR(city,length(city),length(city))) in ('a','e','i','o','u')

-- Method2:
select distinct(CITY) from STATION where lower(CITY) REGEXP '[aeiou]$' ; -- "^" indicates the first letter of the string in Regular expressions

-- Method3: (ineffecient)
select distinct(CITY) from STATION where lower(CITY) like '%a' or lower(city) like '%e' or lower(city) like '%i' or lower(city) like '%o' or lower(city) like '%u'

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

--7 Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.

select  distinct city from station where lower(city) REGEXP '^[aeiou]' and lower(city) REGEXP '[aeiou]$'

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

--8 Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.

select distinct city from station where lower(substr(city, length(city), length(city))) not in ('a','e','i','o','u')

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

