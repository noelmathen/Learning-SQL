-- parent table 
create table dept(
	id int primary key,
    name varchar(50)
);
drop table dept;
select * from dept;
insert into dept values
	(1, 'csbs'),
    (2, 'cse');


-- child table
create table teacher(
	id int primary key,
    name varchar(50),
    dept_id int,
    foreign key (dept_id) references dept(id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);
drop table teacher;
select * from teacher;
insert into teacher values
	(101, 'bindhu', 1),
    (102, 'sindhu', 1),
    (103, 'indhu', 2);
    
    
update dept
set id=11
where id=1;

delete from dept 
where id=1;