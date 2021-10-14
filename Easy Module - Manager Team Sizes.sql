------------------------------- Manager Team Sizes

------- Write a query to identify the manager with the biggest team size. You may assume there is only one manager with the largest team size

------------------------------------------------------------------------------------------------------------------------------------------
-                                                            Loading the data
------------------------------------------------------------------------------------------------------------------------------------------

-- 1.  Creating "employees" table;

create table employees
(
   id int,
   first_name varchar(30),
   last_name varchar(30),
   salary int,
   department_id int,
   manager_id int
);

-- 2. Insert data into "employees" table

INSERT INTO employees (id, first_name, last_name, salary, department_id, manager_id)
VALUES (103, 'Akhila','A',1203,4, 3), (104,'Aneela','CH', 1204,8, 3), (105, 'Hyma', 'CH', 1204, 3,8), (106, 'Venu', 'CH', 1204, 3, 7);

-- 3.  Creating "managers" table;

create table managers
(
   id int,
   name varchar(30),
   team varchar(30)
);

-- 4. Insert data into "managers" table

INSERT INTO managers (id, name, team)
VALUES (3,'AA','Wrestlers'), (8,'CC','SEASOIUN'), (7,'BB','FreWENC');

------------------------------------------------------------------------------------------------------------------------------------------
-                                      SQL Query to 

TRICK! : whenever occurences comes use "ROW_NUMBER()" function
------------------------------------------------------------------------------------------------------------------------------------------
Actual solution:

select t1.manager, count(distinct(t1.id)) as team_size from (
select  e.manager_id, m.name as manager, e.id  from employees as e
join managers as m 
on e.manager_id = m.id
) as t1
group by manager
order by team_size desc
limit 1






