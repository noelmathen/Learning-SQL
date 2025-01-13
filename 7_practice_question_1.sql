create database touchar;
use touchar;

create table employee(
	id int primary key auto_increment,
    name varchar(100),
    salary int unsigned
);
drop table employee;

insert into employee (name, salary) values
("noel", 39000),
("bob", 30000),
("casey", 40000);

select * from employee;