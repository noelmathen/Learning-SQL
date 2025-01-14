select grade, avg(marks)
from student
group by grade
order by grade;

select city, name, count(*)
from student
group by city, name
order by name;

select city, avg(marks) as avg_marks
from student
group by city
order by avg_marks desc;