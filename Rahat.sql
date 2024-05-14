CREATE DATABASE university;

USE university;

CREATE TABLE student (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    department_id INT
);

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

INSERT INTO student (student_id, name, department_id) VALUES
(1, 'Digo vai', 5),
(2, 'Mico Vai', 2),
(3, 'Mofiz Vai', 9),
(4, 'Mokles Vai', 1),
(5, 'Suku Vai', 6);

INSERT INTO departments (department_id, department_name) VALUES
(1, 'EEE'),
(2, 'CSE'),
(3, 'ENGLISH'),
(4, 'MATH'),
(5, 'BANGLA');

SELECT * FROM student NATURAL JOIN departments;

SELECT * FROM student INNER JOIN departments ON student.department_id = departments.department_id;

SELECT * FROM student LEFT JOIN departments ON student.department_id = departments.department_id;

SELECT * FROM student RIGHT JOIN departments ON student.department_id = departments.department_id;
