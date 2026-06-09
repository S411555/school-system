CREATE DATABASE school_db;
USE school_db;
CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    department VARCHAR(50),
    marks INT,
    city VARCHAR(50)
);
CREATE TABLE courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(50)
);
CREATE TABLE enrollment (
    enroll_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);
INSERT INTO students(name, department, marks, city)
VALUES('Ali', 'CS', 85, 'Jaranwala'),('Sara', 'IT', 90, 'Faisalabad'),('Ahmed', 'SE', 75, 'Lahore');
INSERT INTO courses(course_name)
VALUES('Database'),('Programming'),('Web Development');
INSERT INTO enrollment(student_id, course_id)
VALUES(1,1),(1,2),(2,3),(3,1);

SELECT s.name, c.course_name
FROM students s
INNER JOIN enrollment e ON s.id = e.student_id
INNER JOIN courses c ON c.course_id = e.course_id;

CREATE VIEW student_courses AS
SELECT s.name, s.department, c.course_name
FROM students s
JOIN enrollment e ON s.id = e.student_id
JOIN courses c ON c.course_id = e.course_id;

SELECT * FROM student_courses;
SELECT AVG(marks) AS avg_marks FROM students;
SELECT department, COUNT(*) AS total_students
FROM students
GROUP BY department;
SELECT MAX(marks) AS highest_marks FROM students;
SELECT MIN(marks) AS lowest_marks FROM students;