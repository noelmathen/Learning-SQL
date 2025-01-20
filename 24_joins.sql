-- join -> combine rows from two or more tables

create database college;
use college;

create table student(
	id int primary key,
    name varchar(50)
);
insert into student values
(101, 'adam'),
(102, 'bob'),
(103, 'casey');
select * from student;

alter table student
change column id stud_id INT;

create table course(
	id int primary key,
    course varchar(50)
);
insert into course values
(102, 'english'),
(105, 'math'),
(103, 'science'),
(107, 'computer science');
select * from course;


-- INNER JOIN => joins rows common in both table A and table B
SELECT * 
FROM student as s
INNER JOIN course as c
ON s.id = c.id;



-- LEFT JOIN => joins all records from left table and matched records from right table
SELECT *
FROM student as s
LEFT JOIN course as c
ON s.id = c.id;



-- RIGHT JOIN => joins all records from right table and matched records from left table
SELECT *
FROM student as s
RIGHT JOIN course as c
ON s.id = c.id;



-- FULL JOIN/ FULL OUTER JOIN => joins all records when there is a match in either left or right table
-- UNION will give unique data if overlapped. so no problem

SELECT *
FROM student as s
LEFT JOIN course as c
on s.stud_id = c.id
UNION
SELECT *
FROM student as s
RIGHT JOIN course as c
on s.stud_id = c.id;



-- LEFT EXLUSIVE JOIN
select *
from student as s
left join course as c
on s.stud_id = c.id
where c.id is null;


-- RIGHT EXLUSIVE JOIN
select *
from student as s
right join course as c
on s.stud_id = c.id
where s.stud_id is null;


-- FULL EXLUSIVE JOIN
select *
from student as s
left join course as c
on s.stud_id = c.id
where c.id is null
union
select *
from student as s
right join course as c
on s.stud_id = c.id
where s.stud_id is null;




CREATE TABLE Employee (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    manager_id INT
);
INSERT INTO employee (id, name, manager_id) VALUES
    (101, 'adam', 103),
    (102, 'bob', 104),
    (103, 'casey', NULL),
    (104, 'donald', 103);
select * from employee;



-- SELF JOIN
select a.name as manager_name, b.name as subordinate_name
from employee as a
inner join employee as b
on a.id = b.manager_id;