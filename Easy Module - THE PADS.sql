------------------------------- 

------- 

------------------------------------------------------------------------------------------------------------------------------------------
-                                                            Loading the data
------------------------------------------------------------------------------------------------------------------------------------------

-- 1.  Creating "occupations" table;

create table occupations
(
   name varchar(20),
   Occupation varchar(30)
);

-- 2. Insert data into "occupations" table

INSERT INTO occupations (name, Occupation)
VALUES ('Akhila','Senior Data Analyst'), ('Aneela','Developer'), ('Venu','Engineer'),('Hyma','Home-maker');


------------------------------------------------------------------------------------------------------------------------------------------
-                                      SQL Query to 

TRICK! :  "Concat()" function 
------------------------------------------------------------------------------------------------------------------------------------------
Actual solution:

SELECT CONCAT(Name, '(', SUBSTR(Occupation,1,1),')') FROM OCCUPATIONS ORDER BY Name;
SELECT CONCAT('There are a total of ', COUNT(Occupation), ' ', LOWER(Occupation), 's.') FROM OCCUPATIONS GROUP BY Occupation ORDER BY COUNT(Occupation), Occupation;









