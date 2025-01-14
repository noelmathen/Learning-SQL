-- UNIQUE
-- NOT NULL
-- PRIMARY KEY
-- FOREIGN KEY
-- DEFAULT 
-- CHECK
-- CONSTRAINT
-- CREATE INDEX

create table student(
	id INT,
    name VARCHAR(50),
    age TINYINT unsigned default 25,
    city_id INT, 
    PRIMARY KEY (id, name),
    foreign key (CITY_ID) references city(id),
    constraint age_check check (age>=18 and name="Noel")
);
drop table student;
insert into student (id, name, city_id) values (1, 'Noel', 1);
insert into student values (2, 'Noel Jacob', 24, 2);
insert into student values (2, 'Joel Jacob', 24, 2);
select * from student;


create table city(
	id int primary key,
    name varchar(50),
    longitude int unique,
    lattittude int unique
);
drop table if exists city;
insert into city values (1, 'aluva', 2423, 2344);
insert into city values (2, 'kochi', 2345, 1344);
select * from city;


insert into temp1 values (1, 'Joel', 24); -- cant be done




