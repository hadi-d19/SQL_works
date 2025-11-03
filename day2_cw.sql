-- You are helping manage a student information table in a college database. The table is named students and contains the following columns:
-- id (number)
-- name (text)
-- age (number)
-- department (text)
-- grade (number)
-- Your task is to:
-- Insert 4 student records into the students table using realistic data.
-- Write a query to display all students whose age is greater than 20.
-- Write a query to display all students in the 'Computer Science' or 'Physics' departments.
-- Write a query to show the student who has the grade exactly equal to 90.
-- Write a query to find students whose grades are between 70 and 90.

INSERT INTO students VALUES(1,'Hadi',22,'Computer Science',90),
(2,'Sam',21,'Physics',85),
(3,'zam',23,'Physics',65),
(4,'John',19,'Computer Science',93);

SELECT * FROM students WHERE age > 20; 

SELECT * FROM students WHERE department IN('Computer Science','Physics');

SELECT * FROM students WHERE grade = 90; 

SELECT * FROM students WHERE grade BETWEEN 70 AND 90; 
