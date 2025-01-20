CREATE TABLE student (
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT,
    city VARCHAR(50)
);

INSERT INTO student (rollno, name, marks, city) VALUES
    (101, 'anil', 78, 'Pune'),
    (102, 'bhumika', 93, 'Mumbai'),
    (103, 'chetan', 85, 'Mumbai'),
    (104, 'dhruv', 96, 'Delhi'),
    (105, 'emanuel', 92, 'Delhi'),
    (106, 'farah', 82, 'Delhi');
    
select * from student;


-- Get names of all students who scored more than class average.
select name, marks
from student
where marks >
(select avg(marks) from student)
order by marks desc;

-- Find the names of all students with even roll numbers.
select name, rollno 
from student
where rollno in
(select rollno from student where rollno % 2 = 0);


-- Find the max marks from the students of Delhi
select max(marks) 
from (select marks from student where city='Delhi') as temp; -- if the 'as temp is not given, this query wont work)



-- special case???
select (select max(marks) from student) as max_mark, name 
from student;


