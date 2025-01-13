CREATE TABLE student(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT NOT NULL
);

INSERT INTO student VALUES(1, 'Noel', 21);
INSERT INTO student VALUES(2, 'Shibu', 22);

select * from student;

insert into student 
(id, name, age)
values
(3, 'Prinz', 22),
(4, 'Alwin', 20),
(5, 'Rehan', 23);

SELECT * FROM student; 