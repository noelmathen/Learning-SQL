-- ALTER COMMAND:
-- 	   * ADD		- add a new column    
--     * MODIFY		- modify type/strucutre of new column
--     * CHANGE		- rename column
--     * DROP		- drop/delete a column
--     * RENAME		- rename table

select * from student;

insert into student values (107, 'prinz', 99, 'A', 'Kochi', '22');
delete from student where rollno=107;


alter table student
add column age varchar(10) default 20;

alter table student
modify column age varchar(2);

alter table student
change column age stud_age int;

alter table student
drop column stud_age;

alter table stud
rename to student;
