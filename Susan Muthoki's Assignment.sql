DROP DATABASE IF EXISTS edu_institute;
CREATE DATABASE edu_institute;
USE edu_institute;
CREATE TABLE students (
    Student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    gender CHAR(1),
    enrollment_date DATE,
    program VARCHAR(100)
);
INSERT INTO students (Student_id, name, age, gender, enrollment_date, program) VALUES
(1, 'May', 22, 'F', '2023-01-15', 'Computer Science'),
(2, 'Amalia', 24, 'F', '2022-09-10', 'Data Science'),
(3, 'John', 20, 'M', '2023-03-22', 'Business'),
(4, 'Ariadne', 23, 'F', '2021-08-05', 'Data Science'),
(5, 'Mark', 21, 'M', '2023-02-18', 'Mechanical Engineering');
SELECT * FROM students
WHERE program = 'Data Science';
SELECT CURRENT_DATE() AS `today's_date`;
SELECT UPPER(name) AS name, enrollment_date FROM students;
SELECT program, COUNT(*) AS number_of_students
FROM students
GROUP BY program
ORDER BY number_of_students DESC;
SELECT name, age
FROM students
ORDER BY age ASC
LIMIT 1;
