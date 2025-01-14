-- Arithmetic =>    +, -, *, /, %
-- Comparision =>   =, !=, >, >=, <, <=
-- Logical => 	 	 AND, OR, NOT, IN, BETWEEN, ALL, LIKE, ANY
-- Bitwise=> 		 &, |

select * from student where marks between 82 and 85; -- both numbers included
select * from student where city in ('Pune', 'Mumbai');
select * from student where city not in ('Pune', 'Mumbai');