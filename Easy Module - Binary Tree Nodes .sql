------------------------------- Binary Tree nodes

------- Write a query to find the node type of Binary Tree ordered by the value of the node. Output one of the following for each node:

------- Root: If node is root node.
------- Leaf: If node is leaf node.
------- Inner: If node is neither root nor leaf node.

------------------------------------------------------------------------------------------------------------------------------------------
-                                                            Loading the data
------------------------------------------------------------------------------------------------------------------------------------------

-- 1.  Creating "BST" table;

create table BST
(
   N int,
   P int
);

-- 2. Insert data into "BST" table

INSERT INTO BST (N,P)
VALUES (1,2),(3,2),(6,8),(9,8),(2,5),(8,5),(5,null);

------------------------------------------------------------------------------------------------------------------------------------------
-                                      SQL Query to 

TRICK! : count(*) & IF clause
------------------------------------------------------------------------------------------------------------------------------------------
Actual solution:

SELECT N, IF(P IS NULL, 'Root', IF((SELECT COUNT(*) FROM BST WHERE P=B.N)>0, 'Inner', 'Leaf')) FROM BST AS B ORDER BY N;






