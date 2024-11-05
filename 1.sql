CREATE DATABASE db;
USE db;

CREATE TABLE students (
    usn VARCHAR(15) PRIMARY KEY,
    sname VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    pincode VARCHAR(10),
    dob DATE
);

ALTER TABLE students
ADD phonenumber VARCHAR(15);

INSERT INTO students (usn, sname, email, pincode, dob, phonenumber) VALUES
('4MW22CS010', 'ADITYA', 'aditya.22cs010@sode-edu.in', '574115', '2004-04-26', '1234567890'),
('4MW22CS022', 'ANEESH', 'aneesh.22cs022@sode-edu.in', '654321', '2004-09-14', '1234567890');

SELECT * FROM students;

UPDATE students
SET email = 'anuj.22cs026@sode-edu.in'
WHERE usn = '4MW22CS010';

SELECT * FROM students;