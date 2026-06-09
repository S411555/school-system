# school-system
# School Database Management System

## Project Description
This project is a simple School Database Management System developed using MySQL. It demonstrates database creation, table relationships, joins, views, and aggregate functions.

## Features
- Create and manage student records
- Store course information
- Manage student enrollments
- Use Primary Key and Foreign Key constraints
- Perform INNER JOIN operations
- Create and use SQL Views
- Calculate Average, Maximum, and Minimum marks
- Count students department-wise using GROUP BY

## Database Structure

### Students Table
| Column | Data Type |
|----------|----------|
| id | INT |
| name | VARCHAR(50) |
| department | VARCHAR(50) |
| marks | INT |
| city | VARCHAR(50) |

### Courses Table
| Column | Data Type |
|----------|----------|
| course_id | INT |
| course_name | VARCHAR(50) |

### Enrollment Table
| Column | Data Type |
|----------|----------|
| enroll_id | INT |
| student_id | INT |
| course_id | INT |

## Technologies Used
- MySQL
- SQL Queries
- Database Design

## SQL Concepts Covered
- CREATE DATABASE
- CREATE TABLE
- INSERT INTO
- PRIMARY KEY
- FOREIGN KEY
- INNER JOIN
- VIEW
- GROUP BY
- Aggregate Functions (AVG, MAX, MIN, COUNT)

## Sample Query

```sql
SELECT s.name, c.course_name
FROM students s
INNER JOIN enrollment e
ON s.id = e.student_id
INNER JOIN courses c
ON c.course_id = e.course_id;
```

## Output

| Student Name | Course Name |
|-------------|------------|
| Ali | Database |
| Ali | Programming |
| Sara | Web Development |
| Ahmed | Database |

## Author
Esha Faisal

## GitHub Repository
Add your repository link here.
