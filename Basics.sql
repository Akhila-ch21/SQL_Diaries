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
--9  Query the Name of any student in STUDENTS who scored higher than  Marks. Order your output by the last three characters of each name. 
--   If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.

TRICK!: Right - last ; Left - First : "slicing of strings"

select Name from STUDENTS where Marks > 75 
order by RIGHT(Name, 3), ID;   

--------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 10. Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.

create table city
(
  id int,
  name varchar(30),
  countrycode vachar(20),
  district varchar(20),
  population int
);

create table country
(
   code int,
   name varchar(30),
   continent varchar(90),
   region varchar(7),
   population int
);

-- solution:

select distinct city.name from city
join country
on city.countrycode = country.code
where continent ='Africa'
--------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 10.1 Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.

-- TRICK! : Round down to nearest integer - "FLOOR()" ; Round up to nearest integer - "Ceil()"


select country.continent, FLOOR(avg(city.population)) as avg from country
join city
on country.code = city.countrycode
group by country.continent
order by avg
--------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 11. Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, but did not realize her keyboard's  key was broken until after completing the calculation. She wants your help finding the difference between her miscalculation (using salaries with any zeros removed), and the actual average salary.

-- Write a query calculating the amount of error (i.e.:  average monthly salaries), and round it up to the next integer.

-- Actual solution: 

select ceil(avg(salary) - avg(replace(salary,'0',''))) as difference from employees
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 12. Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than 137.2345. Round your answer to 4 decimal places.

- logic1:
SELECT ROUND(LONG_W,4) FROM STATION WHERE LAT_N = (SELECT MAX(LAT_N) FROM STATION WHERE LAT_N < 137.2345) 

- logic2:
SELECT ROUND(LONG_W,4) FROM STATION WHERE LAT_N < 137.2345 ORDER BY LAT_N DESC LIMIT 1

--------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 13. Query the Western Longitude (LONG_W)where the smallest Northern Latitude (LAT_N) in STATION is greater than 38.7780 . Round your answer to 4 decimal places.

select round(long_w,4) from station where lat_n > 38.7780 order by lat_n limit 1

--------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 14. Calculate the Manhattan distance.     # HINT : "ABS()" function - modulus

/*
Manhattan distance = |x1 - x2|+|y1-y2|
*/

SELECT ROUND((abs(MIN(LAT_N)-MAX(LAT_N))) + (abs(MIN(LONG_W)-MAX(LONG_W))),4) AS MANHATTAN_DISTANCE FROM STATION

--------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 14. Calculate the Euclidean distance.     # HINT : "SQRT()" function 

/*
Euclidean Distance = sqrt((x2-x1)^2+(y2-y1)^2)
*/

select ROUND(SQRT(((MAX(LAT_N)-MIN(LAT_N))*(MAX(LAT_N)-MIN(LAT_N)))+((MAX(LONG_W)-MIN(LONG_W))*(MAX(LONG_W)-MIN(LONG_W)))),4) as ED FROM STATION

--------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 15. Calculate the MEDIAN of the column


/* MEDIAN:

LOGIC : IN CASE OF BOTH ODD & EVEN :
        AVG( FLOOR(n/2), ceil(n/2)) ; n is the row position;
        
        -----------------------
        
Methodology:
1. Create a rowindex column  with the help of user defined variable, 
           @rowindex (set @rowindex := -1) # every column starts with 0
2. arrange them in the ascending or descending order of the column and create row_index
3. select the records related to ceil(n/2), floor(n/2)
4. take the avg(column) with row position containing ceil(n/2) and floor(n/2)
*/


SET @rowIndex := -1; -- @row_index - user-defined variable
SELECT ROUND(AVG(t.LAT_N), 4) FROM
(
SELECT @rowIndex := @rowIndex+1 AS rowIndex, s.LAT_N FROM STATION AS s ORDER BY s.LAT_N
) AS t
WHERE t.rowIndex IN (FLOOR(@rowIndex / 2), CEIL(@rowIndex / 2));

--------------------------------------------------------------------------------------------------------------------------------------------------------------------


