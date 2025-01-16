-- parent table 
create table dept(
	id int primary key,
    name varchar(50)
);


-- child table
create table teacher(
	id int primary key,
    name varchar(50),
    dept_id int,
    foreign key (dept_id) references dept(id)
);
