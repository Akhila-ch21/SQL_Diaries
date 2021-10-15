------------------------------- 

------- Generate the following two result sets:

------- Query an alphabetically ordered list of all names in OCCUPATIONS, immediately followed by the first letter of each profession as a parenthetical (i.e.: enclosed in parentheses). For example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).
------- Query the number of ocurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order, and output them in the following format:

------- There are a total of [occupation_count] [occupation]s.
------- where [occupation_count] is the number of occurrences of an occupation in OCCUPATIONS and [occupation] is the lowercase occupation name. If more than one Occupation has the same [occupation_count], they should be ordered alphabetically.
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
-                                      SQL Query to CONCATE THE STRINGS

TRICK! :  "Concat()" function 
------------------------------------------------------------------------------------------------------------------------------------------
Actual solution:

SELECT CONCAT(Name, '(', SUBSTR(Occupation,1,1),')') FROM OCCUPATIONS ORDER BY Name;
SELECT CONCAT('There are a total of ', COUNT(Occupation), ' ', LOWER(Occupation), 's.') FROM OCCUPATIONS GROUP BY Occupation ORDER BY COUNT(Occupation), Occupation;









