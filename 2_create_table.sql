CREATE TABLE student(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT NOT NULL
);

INSERT INTO student VALUES(1, 'Noel', 21);
INSERT INTO student VALUES(2, 'Shibu', 22);

SELECT * FROM student; 