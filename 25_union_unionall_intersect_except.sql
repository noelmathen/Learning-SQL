-- UNION (Combines the result sets of two or more SELECT statements. Returns only distinct rows.)
select name from employee
union
select name from employee;


-- UNION ALL (Combines the result sets of two or more SELECT statements. Returns all rows, including duplicates.)
select name from employee
union all
select name from employee;


-- INTERSECT (Returns only the rows that are common to both SELECT statements.)
select name from employee
INTERSECT
select name from employee;


-- EXCEPT (Returns the rows that are present in the first SELECT statement but not in the second.)
select name from employee
EXCEPT
select name from employee;

