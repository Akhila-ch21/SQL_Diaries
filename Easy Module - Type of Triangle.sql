------------------------------- Type of Triangle

------- Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:

------- Equilateral: It's a triangle with  sides of equal length.
------- Isosceles: It's a triangle with  sides of equal length.
------- Scalene: It's a triangle with  sides of differing lengths.
------- Not A Triangle: The given values of A, B, and C don't form a triangle.


------------------------------------------------------------------------------------------------------------------------------------------
-                                                            Loading the data
------------------------------------------------------------------------------------------------------------------------------------------

-- 1.  Creating "triangles" table;

create table triangles
(
   A int,
   B int,
   C int
);

-- 2. Insert data into "triangles" table

INSERT INTO triangles (A,B,C)
VALUES (20,20,23),(20,20,20),(20,21,22),(13,14,30);


------------------------------------------------------------------------------------------------------------------------------------------
-                                      SQL Query to Classify the triangles

- TRICK! : use "CASE STATEMENTS" for solving Classification problems 
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

     






