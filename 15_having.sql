-- HAVING => similar to WHERE, but used after grouping

-- WHERE  -> done on rows
-- HAVING -> done on groups

select city, count(name)
from student
group by city
having max(marks)>90;