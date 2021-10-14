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
VALUES (1, 'Julia',88), (2,'samantha', 68),(3,'Maria', 99 ),(4,'Scarlet',78), (5, 'Ashley', 63), (6,'Jane', 81);

-- 3.  Creating "grades" table;

create table grades
(
   grade int,
   Min_mark int,
   max_mark int
);

-- 4. Insert data into "grades" table

INSERT INTO grades (grade, min_mark, max_mark)
VALUES (1, 0, 9),(2, 10, 19),(3, 20, 29),(4, 30, 39),(5, 40, 49),(6, 50, 59),(7, 60, 69),(8, 70, 79),(9, 80, 89), (10, 90, 100);

------------------------------------------------------------------------------------------------------------------------------------------
-                                      SQL Query to Student Grade Card

--  TRICK! : Apply multiple conditions while joining two tables!
------------------------------------------------------------------------------------------------------------------------------------------
Actual solution:


select t1.name_updated, g.grade, t1.marks from 
(select CASE WHEN S.marks > (select min_mark from grades where grade = 8) THEN S.name ELSE NULL END AS name_updated, S.marks from Students as S) as t1
inner join 
(select grade, min_mark, max_mark from grades) as g
on t1.marks >= g.min_mark and t1.marks <= g.max_mark
order by g.grade desc, t1.name_updated asc





