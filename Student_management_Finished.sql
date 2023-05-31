
CREATE DATABASE Studentmanagement;

USE Studentmanagement;


create table Student(
Student_name varchar(255),
Roll_no int NOT null,
Dob date,
PRIMARY KEY (Roll_no)
);

DESC Student;

insert into Student values 
('Krish',0101,'1988-11-12'),
('Rajkumar',0102,'1985-05-31'),
('Vignesh',0103,'1986-05-20'),
('Vaishnavi',0104,'14-12-11');

## 1. Should list the details of all students?
select * from Student;

## 2. Should be able to add student based on the above mentioned student object?

insert into Student values 
('Keerthana',0105,'1990-06-22');
select * from Student;

## 3. Should be able to fetch a single student detail based on the pk value passed?

SELECT * FROM Student where roll_no = 102;

## 4. Should be able to add mark to a single student based on the pk value passed?

ALTER TABLE Student 
ADD COLUMN Marks int(100) AFTER Dob;
select * from Student;

UPDATE Student SET Marks = '090' WHERE Roll_no = 103;
UPDATE Student SET Marks = '081' WHERE Roll_no = 102;
select * from Student;

## 5. Should be able to see single student’s marks based on the pk value passed?

SELECT * FROM Student where Roll_no = 103;

/* 6. Should be able to get an analyzed report for the following conditions
i. Students in S grade
ii. Students in A grade
iii. Students in B grade
iv. Students in C grade
v. Students in D grade
vi. Students in E grade
vii. Students in F Grade
viii. Pass Percentage */


ALTER TABLE Student 
ADD COLUMN Grade varchar(255) AFTER Marks;
select * from Student;

UPDATE Student SET Grade = 'sgrade' WHERE Roll_no = 103;
select * from Student;

select CASE 
WHEN max_grade < 50 then "Student id has grade: F"
WHEN (max_grade >=50 AND max_grade <55) then "Student id has grade: E"
WHEN (max_grade >=56 AND max_grade <60) then "Student id has grade: D"
WHEN (max_grade >=61 AND max_grade <70) then "Student id has grade: C"
WHEN (max_grade >=71 AND max_grade <80) then "Student id has grade: B"
WHEN (max_grade >=81 AND max_grade <90) then "Student id has grade: A"
ELSE "Student id has grade: S"
END AS Grade from Student order by Roll_no;

## viii. Pass Percentage

ALTER TABLE Student 
ADD COLUMN Percentage char(10) AFTER Grade;

SELECT Student_name,Roll_No, Percentage = ( total no. students with marks - No. students in F grade) / total no.
students with marks ] * 100

FROM Student
CROSS JOIN (SELECT SUM(Student) AS s FROM Student) t;


