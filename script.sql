--Create a simple table

DROP TABLE IF EXISTS students;
CREATE TABLE "students" (
	"name"	VARCHAR(255),
	"age"	INTEGER
);


--Basic SQL syntax

-- INSERT: Add records to the 'students' table
INSERT INTO students (name, age) VALUES ('Alice', 22);
INSERT INTO students (name, age) VALUES ('Bob', 25);
-- SELECT: Retrieve all records from the 'students' table
SELECT * FROM students;
-- UPDATE: Modify the age of a specific student
UPDATE students
SET age = 23
WHERE name = 'Alice';
-- DELETE: Remove a specific student from the table
DELETE FROM students
WHERE name = 'Bob';


-- SQL Primary Key

DROP TABLE IF EXISTS enrollments;
DROP TABLE IF EXISTS courses;
DROP TABLE IF EXISTS students;
CREATE TABLE students(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INTEGER
);
CREATE TABLE courses(
    course_id INTEGER PRIMARY KEY,
    course_name VARCHAR(255)
);
CREATE TABLE enrollments(
    enrollment_id INTEGER PRIMARY KEY,
    student_id INTEGER,
    course_id INTEGER,
    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);



DROP TABLE IF EXISTS enrollments;
DROP TABLE IF EXISTS courses;
DROP TABLE IF EXISTS students;

CREATE TABLE students(
    id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(255),
    age INT
);

CREATE TABLE courses(
    course_id INT IDENTITY(1,1) PRIMARY KEY,
    course_name VARCHAR(255)
);

CREATE TABLE enrollments(
    enrollment_id INT IDENTITY(1,1) PRIMARY KEY,
    student_id INT,
    course_id INT,
    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

CREATE TABLE products (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(255),
    price FLOAT
); 