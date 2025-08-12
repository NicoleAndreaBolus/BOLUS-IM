Show databases;

CREATE DATABASE UA_ENROLLMENT;

USE UA_ENROLLMENT;

CREATE TABLE students(
	student_id INT auto_increment,
	first_name VARCHAR(100),
    middle_name VARCHAR(100),
    last_name VARCHAR(100),
    contact_number INT,
    birth_date DATE,
    email VARCHAR(100),
    PRIMARY KEY (student_id)
);

show tables;

desc students;
desc enrollment;
desc courses;

CREATE TABLE enrollments(
	enrollment_id INT auto_increment,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    isPaid BOOLEAN,
    PRIMARY KEY (enrollment_id),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

CREATE TABLE courses(
	course_id INT auto_increment,
    course_name VARCHAR(100),
    unit INT,
    instructor VARCHAR(200),
    room VARCHAR(10),
    PRIMARY KEY (course_id)
);


