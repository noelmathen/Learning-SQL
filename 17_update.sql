SET SQL_SAFE_UPDATES=0;

select * from student;

update student
SET grade = 'O' 
WHERE grade = 'A'; 


update student
SET marks = 71 
WHERE name = 'anil'; 


update student
set grade = 'B'
where marks between 80 and 90;


update student
set marks = marks+1;